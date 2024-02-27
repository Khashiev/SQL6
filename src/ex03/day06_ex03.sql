CREATE UNIQUE INDEX idx_person_discounts_unique 
    ON person_discounts (person_id, pizzeria_id);

SET enable_seqscan = OFF;

EXPLAIN ANALYZE
SELECT MAX(person_id), MAX(pizzeria_id) FROM person_discounts;
