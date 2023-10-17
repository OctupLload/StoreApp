--liquibase formatted sql

--changeset Eduard:5
CREATE TABLE store_app.operations (
    id serial PRIMARY key,
    paid boolean,
    status varchar(50),
    created_by int,
    edited_by int,
    create_date timestamp,
    edit_date timestamp
);