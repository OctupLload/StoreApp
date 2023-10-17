--liquibase formatted sql

--changeset Eduard:12
CREATE TABLE store_app.questions_answers (
    id serial PRIMARY key,
    question_id int,
    answer_id int,
    product_id int
);