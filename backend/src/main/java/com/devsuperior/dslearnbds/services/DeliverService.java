package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.dtos.DeliverRevisionDTO;
import com.devsuperior.dslearnbds.entities.Deliver;
import com.devsuperior.dslearnbds.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository repository;

    @PreAuthorize("hasAnyRole('ADMIN', 'INSTRUCTOR')")
    @Transactional
    public void saveRevision(Long deliverId, DeliverRevisionDTO deliverRevisionDTO) {
        Deliver deliver = repository.getOne(deliverId);
        this.dtoToEntity(deliver, deliverRevisionDTO);
        repository.save(deliver);
    }

    public void dtoToEntity(Deliver deliver, DeliverRevisionDTO dto) {
        deliver.setStatus(dto.getStatus());
        deliver.setFeedback(dto.getFeedback());
        deliver.setCorrectCount(dto.getCorrectCount());
    }
}
