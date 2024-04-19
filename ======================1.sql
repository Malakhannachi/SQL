======================1
SELECT *, categorie.type_recette
FROM recipe
INNER JOIN categorie ON categorie.id_categorie = recipe.id_categorie
ORDER BY temps_preparation DESC 
=========================1

==========>2
SELECT nom, COUNT(id_ingredient)
FROM recipe 
INNER JOIN preparer ON recipe.id_recette = preparer.id_recette
GROUP BY recipe.id_recette
============>2

=======>3
SELECT * 
FROM recipe 
WHERE temps_preparation >= 30; 
===========>Q3

=========>4
SELECT *
FROM recipe 
WHERE nom LIKE 'salade%'
========>4 

========5 
INSERT INTO recipe (nom, temps_preparation, instructions, id_categorie)
VALUES ( 'Pâtes à la carbonara', 20, 'azertyuiop', 1)
======================5

======================6
UPDATE recipe SET nom = 'chocolat chaud'
WHERE id_recette = 3
=======================6

==========================7
DELETE FROM recipe 
WHERE id_recette = 2
======================7

=======================8
SELECT SUM( quantite*prix_ingredient)
FROM preparer
INNER JOIN recipe ON preparer.id_recette = recipe.id_recette 
INNER JOIN ingredient ON preparer.id_ingredient = ingredient.id_ingredient
WHERE recipe.id_recette = 5
====================8

======================9
SELECT quantite, nom_ingredient, prix_ingredient
FROM preparer
INNER JOIN recipe ON preparer.id_recette = recipe.id_recette 
INNER JOIN ingredient ON preparer.id_ingredient = ingredient.id_ingredient
WHERE recipe.id_recette  = 5
=======================9

========================10
INSERT INTO ingredient ( nom_ingredient, unite_de_mesure, prix_ingredient)
VALUES ( 'poivre', 'cuillère à café', 2.5)
=======================10

=======================11
UPDATE ingredient SET prix_ingredient = 1
WHERE id_ingredient = 12
=======================11

========================12
SELECT type_recette, COUNT(recipe.id_recette)
FROM categorie
INNER JOIN recipe ON categorie.id_categorie= recipe.id_categorie
GROUP BY recipe.id_categorie
=========================12

============================13
SELECT nom
FROM preparer
INNER JOIN recipe ON preparer.id_recette = recipe.id_recette 
INNER JOIN ingredient ON preparer.id_ingredient = ingredient.id_ingredient
WHERE nom_ingredient = 'poulet'
============================13

=========================14
UPDATE recipe
SET temps_preparation = temps_preparation-5
=========================14

=========================15
SELECT nom
FROM preparer
INNER JOIN recipe ON preparer.id_recette = recipe.id_recette 
INNER JOIN ingredient ON preparer.id_ingredient = ingredient.id_ingredient
WHERE prix_ingredient > 2
=======================15

========================16
SELECT recipe.nom, temps_preparation
FROM recipe
GROUP BY recipe.id_recette
HAVING temps_preparation = (SELECT MIN(temps_preparation) FROM recipe)
==========================16	

==========================17
SELECT nom
FROM preparer
INNER JOIN recipe ON preparer.id_recette = recipe.id_recette 
INNER JOIN ingredient ON preparer.id_ingredient = ingredient.id_ingredient
WHERE nom_ingredient = '0'
=====================17

==================18
SELECT ingredient.nom_ingredient
FROM ingredient
INNER JOIN preparer ON preparer.id_ingredient = ingredient.id_ingredient
GROUP BY preparer.id_ingredient
HAVING COUNT(id_recette) >= 3;
=======================18

=====================19
INSERT INTO preparer (quantite, id_recette, id_ingredient)
VALUES (100, 3, 14)
=======================19





