--liquibase formatted sql

--changeset Eduard:3
CREATE TABLE store_app.deliveries (
    id serial PRIMARY key,
    description varchar(500),
    operation_id int,
    address varchar(500),
    status varchar(50),
    create_date timestamp,
    edit_date timestamp
);