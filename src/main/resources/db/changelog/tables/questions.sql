--liquibase formatted sql

--changeset Eduard:11
CREATE TABLE store_app.questions (
    id serial PRIMARY key,
    description varchar(500),
    created_by int,
    edited_by int,
    create_date timestamp,
    edit_date timestamp
);