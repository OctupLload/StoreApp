--liquibase formatted sql

--changeset Eduard:8
CREATE TABLE store_app.products (
    id serial PRIMARY key,
    description varchar(500),
    product_category_id int,
    provider_id int,
    "count" int
);