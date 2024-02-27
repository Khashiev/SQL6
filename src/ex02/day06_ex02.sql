SELECT p.name, m.pizza_name, m.price, 
	   ROUND((100 - pd.discount) / 100 * m.price, 2) AS discount_price,
	   pz.name
FROM person_order AS po
	JOIN menu AS m ON po.menu_id = m.id
	JOIN person AS p ON  po.person_id = p.id
	JOIN pizzeria AS pz ON m.pizzeria_id = pz.id
	JOIN person_discounts AS pd
                    ON pd.person_id = p.id 
					AND pd.pizzeria_id = m.pizzeria_id
ORDER BY p.name, m.pizza_name;
