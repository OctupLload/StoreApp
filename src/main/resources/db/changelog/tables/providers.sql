--liquibase formatted sql

--changeset Eduard:10
CREATE TABLE store_app.providers (
    id serial PRIMARY key,
    name varchar(100),
    mobile_phone varchar(30),
    email varchar(100),
    address varchar(500),
    is_active boolean
);