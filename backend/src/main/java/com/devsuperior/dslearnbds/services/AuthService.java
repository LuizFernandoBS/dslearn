package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.entities.Role;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;
import com.devsuperior.dslearnbds.services.exceptions.UnauthorizedException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class AuthService {

    @Autowired
    private UserRepository userRepository;

    public User authenticated() {
        try {
            String username = SecurityContextHolder
                    .getContext()
                    .getAuthentication()
                    .getName();
            return userRepository.findByEmail(username);
        } catch (Exception e) {
            throw new UnauthorizedException("Invalid user");
        }
    }

    public void validateSelfOrAdmin(Long id) {
        Optional<User> obj = userRepository.findById(id);
        User user = obj.orElseThrow(() ->
                new ResourceNotFoundException("Entity not found " + id));
        User loggedUser = this.authenticated();

        if (!loggedUser.getId().equals(user.getId()) &&
                !user.hasRole("ROLE_ADMIN")) {
            throw new ForbiddenException("Acces denied");
        }
    }
}
