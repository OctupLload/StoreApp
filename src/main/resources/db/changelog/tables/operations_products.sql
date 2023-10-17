--liquibase formatted sql

--changeset Eduard:6
CREATE TABLE store_app.operations_products(
    id serial PRIMARY KEY,
    operation_id int,
    product_id int,
    "count" int,
    created_by int,
    edited_by int,
    create_date timestamp,
    edit_date timestamp
);