CREATE TABLE "ingredients_to_recipes"
(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "id_ingredients" INTEGER,
    "id_recipes" INTEGER,
    FOREIGN KEY ("id_ingredients") REFERENCES "ingredients" ("id"),
    FOREIGN KEY ("id_recipes") REFERENCES "recipes" ("id")
);

INSERT INTO "ingredients_to_recipes"
VALUES (NULL, 1, 1),
       (NULL, 2, 1),
       (NULL, 3, 1),
       (NULL, 4, 1),
       (NULL, 5, 2),
       (NULL, 6, 2),
       (NULL, 7, 2),
       (NULL, 8, 2),
       (NULL, 9, 2),
       (NULL, 10, 3),
       (NULL, 11, 3),
       (NULL, 1, 3),
       (NULL, 12, 3),
       (NULL, 13, 3),
       (NULL, 14, 4),
       (NULL, 3, 4),
       (NULL, 15, 4),
       (NULL, 16, 4),
       (NULL, 17, 4),
       (NULL, 18, 5),
       (NULL, 9, 5),
       (NULL, 19, 5),
       (NULL, 20, 5),
       (NULL, 5, 5),
       (NULL, 21, 6),
       (NULL, 5, 6),
       (NULL, 22, 6),
       (NULL, 6, 6),
       (NULL, 23, 7),
       (NULL, 24, 7),
       (NULL, 25, 7),
       (NULL, 26, 7),
       (NULL, 27, 7),
       (NULL, 3, 8),
       (NULL, 28, 8),
       (NULL, 25, 8),
       (NULL, 29, 8),
       (NULL, 30, 9),
       (NULL, 14, 9),
       (NULL, 31, 9),
       (NULL, 32, 9),
       (NULL, 33, 9),
       (NULL, 34, 9),
       (NULL, 35, 10),
       (NULL, 36, 10),
       (NULL, 37, 10),
       (NULL, 38, 10),
       (NULL, 14, 11),
       (NULL, 38, 11),
       (NULL, 31, 11),
       (NULL, 36, 12),
       (NULL, 5, 12),
       (NULL, 21, 12),
       (NULL, 17, 12),
       (NULL, 38, 12),
       (NULL, 39, 12),
       (NULL, 40, 12),
       (NULL, 6, 12),
       (NULL, 14, 12),
       (NULL, 25, 12),
       (NULL, 3, 13),
       (NULL, 14, 13),
       (NULL, 9, 13),
       (NULL, 26, 13),
       (NULL, 40, 13),
       (NULL, 36, 14),
       (NULL, 5, 14),
       (NULL, 38, 14),
       (NULL, 39, 14),
       (NULL, 40, 14),
       (NULL, 6, 14),
       (NULL, 41, 14),
       (NULL, 25, 14),
       (NULL, 14, 15),
       (NULL, 42, 15),
       (NULL, 22, 15),
       (NULL, 36, 15),
       (NULL, 40, 15),
       (NULL, 38, 15),
       (NULL, 31, 15),
       (NULL, 33, 15),
       (NULL, 37, 15),
       (NULL, 43, 16),
       (NULL, 15, 16),
       (NULL, 44, 16),
       (NULL, 45, 16),
       (NULL, 46, 17),
       (NULL, 44, 17),
       (NULL, 45, 17),
       (NULL, 1, 17),
       (NULL, 47, 18),
       (NULL, 38, 18),
       (NULL, 7, 18),
       (NULL, 48, 19),
       (NULL, 49, 19),
       (NULL, 11, 19),
       (NULL, 1, 19),
       (NULL, 19, 19),
       (NULL, 50, 19),
       (NULL, 45, 19),
       (NULL, 14, 20),
       (NULL, 33, 20),
       (NULL, 39, 20),
       (NULL, 51, 20),
       (NULL, 52, 21),
       (NULL, 53, 21),
       (NULL, 19, 21),
       (NULL, 25, 21),
       (NULL, 7, 21),
       (NULL, 1, 21),
       (NULL, 54, 21),
       (NULL, 52, 22),
       (NULL, 25, 22),
       (NULL, 19, 22),
       (NULL, 1, 22),
       (NULL, 7, 22),
       (NULL, 54, 22),
       (NULL, 1, 23),
       (NULL, 7, 23),
       (NULL, 52, 23),
       (NULL, 19, 23),
       (NULL, 50, 23),
       (NULL, 45, 23),
       (NULL, 1, 24),
       (NULL, 7, 24),
       (NULL, 55, 24),
       (NULL, 15, 24),
       (NULL, 54, 25),
       (NULL, 1, 25),
       (NULL, 56, 25),
       (NULL, 7, 25),
       (NULL, 19, 25),
       (NULL, 57, 25),
       (NULL, 45, 25),
       (NULL, 58, 26),
       (NULL, 59, 26),
       (NULL, 49, 27),
       (NULL, 54, 27),
       (NULL, 60, 27),
       (NULL, 19, 27),
       (NULL, 50, 27),
       (NULL, 49, 28),
       (NULL, 1, 28),
       (NULL, 61, 28),
       (NULL, 52, 28),
       (NULL, 19, 28),
       (NULL, 50, 28),
       (NULL, 48, 28),
       (NULL, 15, 29),
       (NULL, 35, 29),
       (NULL, 62, 29),
       (NULL, 48, 29),
       (NULL, 63, 29),
       (NULL, 19, 29),
       (NULL, 50, 29),
       (NULL, 64, 29),
       (NULL, 65, 29),
       (NULL, 48, 30),
       (NULL, 1, 30),
       (NULL, 43, 30),
       (NULL, 35, 30),
       (NULL, 44, 30),
       (NULL, 19, 30),
       (NULL, 50, 30);






























































































































