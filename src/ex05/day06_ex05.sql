COMMENT ON TABLE person_discounts IS 'personal discounts for people from one side and restaurants from other';
COMMENT ON COLUMN person_discounts.id IS 'primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'foreign key per person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'foreign key per pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'discount value';
