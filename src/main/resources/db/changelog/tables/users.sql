--liquibase formatted sql

--changeset Eduard:13
CREATE TABLE store_app.users(
    id serial PRIMARY key,
    login varchar(50),
    password varchar(20),
    firstname varchar(50),
    lastname varchar(50),
    surname varchar(50),
    birthdate date,
    email varchar(50),
    gender char(1),
    mobile_phone varchar(50),
    create_date timestamp,
    edit_date timestamp
);