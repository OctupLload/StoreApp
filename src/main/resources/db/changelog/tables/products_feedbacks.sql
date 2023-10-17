--liquibase formatted sql

--changeset Eduard:9
CREATE TABLE store_app.products_feedbacks(
    id serial PRIMARY KEY,
    product_id int,
    feedback_id int,
    parent_feedback int
);