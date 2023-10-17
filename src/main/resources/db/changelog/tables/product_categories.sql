--liquibase formatted sql

--changeset Eduard:7
CREATE TABLE store_app.product_categories (
    id serial PRIMARY key,
    description varchar(100)
);