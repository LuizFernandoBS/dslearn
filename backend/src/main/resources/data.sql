INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 'https://htmlcolorcodes.com/assets/images/colors/gray-color-solid-background-1920x1080.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', 1L);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Accepted task', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', true, 'Lorem Ipsum', 3L);

INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 1, 'Loren ipsum', 1L);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 2, 'Loren ipsum', 1L);
INSERT INTO tb_resource (title, description, position, img_Uri, type, external_Link, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 0, 'Loren ipsum', 1L);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos comecar', 1, 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 1L, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 1L, 1L);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'https://foundr.com/wp-content/uploads/2023/04/How-to-create-an-online-course.jpg.webp', 1L, 2L);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1L, 1L, TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2L, 1L, TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1L);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1L, 'Material de apoio: abc', 'https://www.youtube.com/shorts/ADO6CZRvCSw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1L);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2L, '', 'https://www.youtube.com/shorts/ADO6CZRvCSw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1L);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3L, '', 'https://www.youtube.com/shorts/ADO6CZRvCSw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1L);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1L, 1L, 1L);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2L, 1L, 1L);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/dscatalog-resources', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
