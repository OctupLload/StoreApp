--liquibase formatted sql

--changeset Eduard:14
ALTER TABLE store_app.operations
    ADD CONSTRAINT created_by_fk FOREIGN KEY (created_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.operations
    ADD CONSTRAINT edited_by_fk FOREIGN KEY (edited_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.feedbacks
    ADD CONSTRAINT created_by_fk FOREIGN KEY (created_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.feedbacks
    ADD CONSTRAINT edited_by_fk FOREIGN KEY (edited_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.questions
    ADD CONSTRAINT created_by_fk FOREIGN KEY (created_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.questions
    ADD CONSTRAINT edited_by_fk FOREIGN KEY (edited_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.answers
    ADD CONSTRAINT created_by_fk FOREIGN KEY (created_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.answers
    ADD CONSTRAINT edited_by_fk FOREIGN KEY (edited_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.deliveries
    ADD CONSTRAINT operation_id_fk FOREIGN KEY (operation_id) REFERENCES store_app.operations(id);

ALTER TABLE store_app.products
    ADD CONSTRAINT provider_id_fk FOREIGN KEY (provider_id) REFERENCES store_app.providers(id);

ALTER TABLE store_app.products
    ADD CONSTRAINT product_category_id_fk FOREIGN KEY (product_category_id) REFERENCES store_app.product_categories(id);

ALTER TABLE store_app.questions_answers
    ADD CONSTRAINT question_id_fk FOREIGN KEY (question_id) REFERENCES store_app.questions(id);

ALTER TABLE store_app.questions_answers
    ADD CONSTRAINT answer_id_fk FOREIGN KEY (answer_id) REFERENCES store_app.answers(id);

ALTER TABLE store_app.questions_answers
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES store_app.products(id);

ALTER TABLE store_app.products_feedbacks
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES store_app.products(id);

ALTER TABLE store_app.products_feedbacks
    ADD CONSTRAINT feedback_id_fk FOREIGN KEY (feedback_id) REFERENCES store_app.feedbacks(id);

ALTER TABLE store_app.products_feedbacks
    ADD CONSTRAINT parent_feedback_fk FOREIGN KEY (parent_feedback) REFERENCES store_app.feedbacks(id);

ALTER TABLE store_app.operations_products
    ADD CONSTRAINT operation_id_fk FOREIGN KEY (operation_id) REFERENCES store_app.operations(id);

ALTER TABLE store_app.operations_products
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES store_app.products(id);

ALTER TABLE store_app.operations_products
    ADD CONSTRAINT created_by_fk FOREIGN KEY (created_by) REFERENCES store_app.users(id);

ALTER TABLE store_app.operations_products
    ADD CONSTRAINT edited_by_fk FOREIGN KEY (edited_by) REFERENCES store_app.users(id);