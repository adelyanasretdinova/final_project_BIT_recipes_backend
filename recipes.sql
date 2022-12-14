-- psql -f recipes.sql

DROP DATABASE IF EXISTS myrecipesdatabase;


CREATE DATABASE myrecipesdatabase;

-- \c myrecipesdatabase;

DROP TABLE if EXISTS recipes;

DROP TABLE if EXISTS favoriterecipes;


DROP TABLE if EXISTS users;


CREATE TABLE users (
        id UUID PRIMARY KEY,
        username VARCHAR(200) UNIQUE NOT NULL,
        email VARCHAR(50) NOT NULL,
        password VARCHAR NOT NULL
        );


INSERT INTO users (id,
                   username,
                   email,
                   password)
VALUES ('35ed4f16-b415-4821-a85c-b6de74a3b9f7',
        'Miriam-test',
        'mdd.wit2022@startsteps.de',
        'Mdd.wit2022@startsteps.de')
SELECT * FROM users;


CREATE TABLE recipes (
        id UUID PRIMARY KEY,
        nameRecipe VARCHAR(200) NOT NULL,
        mealType VARCHAR(200) NOT NULL,
        mealOrigin VARCHAR(200) NOT NULL,
        ingredients1 VARCHAR(200) NOT NULL,
        ingredients2 VARCHAR(200),
        ingredients3 VARCHAR(200),
        ingredients4 VARCHAR(200),
        ingredients5 VARCHAR(200),
        measurement1 VARCHAR(200) NOT NULL,
        measurement2 VARCHAR(200),
        measurement3 VARCHAR(200),
        measurement4 VARCHAR(200),
        measurement5 VARCHAR(200),
        instruction TEXT NOT NULL,
        url VARCHAR(2000) NOT NULL,
        userid UUID NOT NULL,
        CONSTRAINT fk_user
                FOREIGN KEY(userid) 
                REFERENCES users(id)
        );

-- CREATE TABLE recipes (
--         id UUID PRIMARY KEY,
--         nameRecipe VARCHAR(200) NOT NULL,
--         mealType VARCHAR(200) NOT NULL,
--         mealOrigin VARCHAR(200) NOT NULL,
--         ingredients1 VARCHAR(200) NOT NULL,
--         ingredients2 VARCHAR(200),
--         ingredients3 VARCHAR(200),
--         ingredients4 VARCHAR(200),
--         ingredients5 VARCHAR(200),
--         ingredients6 VARCHAR(200),
--         ingredients7 VARCHAR(200),
--         ingredients8 VARCHAR(200),
--         ingredients9 VARCHAR(200),
--         ingredients10 VARCHAR(200),
--         ingredients11 VARCHAR(200),
--         ingredients12 VARCHAR(200),
--         ingredients13 VARCHAR(200),
--         ingredients14 VARCHAR(200),
--         ingredients15 VARCHAR(200),
--         ingredients16 VARCHAR(200),
--         ingredients17 VARCHAR(200),
--         ingredients18 VARCHAR(200),
--         ingredients19 VARCHAR(200),
--         ingredients20 VARCHAR(200),
--         measurement1 VARCHAR(200) NOT NULL,
--         measurement2 VARCHAR(200),
--         measurement3 VARCHAR(200),
--         measurement4 VARCHAR(200),
--         measurement5 VARCHAR(200),
--         measurement6 VARCHAR(200),
--         measurement7 VARCHAR(200),
--         measurement8 VARCHAR(200),
--         measurement9 VARCHAR(200),
--         measurement10 VARCHAR(200),
--         measurement11 VARCHAR(200),
--         measurement12 VARCHAR(200),
--         measurement13 VARCHAR(200),
--         measurement14 VARCHAR(200),
--         measurement15 VARCHAR(200),
--         measurement16 VARCHAR(200),
--         measurement17 VARCHAR(200),
--         measurement18 VARCHAR(200),
--         measurement19 VARCHAR(200),
--         measurement20 VARCHAR(200),
--         instruction VARCHAR(2000000) NOT NULL,
--         url VARCHAR(2000000) NOT NULL,
--         userid UUID NOT NULL,
--         CONSTRAINT fk_user
--                 FOREIGN KEY(userid) 
--                 REFERENCES users(id)
--         );


INSERT INTO recipes (id, nameRecipe, mealType, mealOrigin, ingredients1, ingredients2, ingredients3, ingredients4, ingredients5, ingredients6, ingredients7, ingredients8, ingredients9, ingredients10, ingredients11, ingredients12, ingredients13, ingredients14, ingredients15, ingredients16, ingredients17, ingredients18, ingredients19, ingredients20, measurement1, measurement2, measurement3, measurement4, measurement5, measurement6, measurement7, measurement8, measurement9, measurement10, measurement11, measurement12, measurement13, measurement14, measurement15, measurement16,measurement17, measurement18, measurement19, measurement20, instruction, url, userid)
VALUES (gen_random_uuid(),
        'Fettuccine Alfredo',
        '',
        'American',
        'Fettucine',
        'Heavy Cream',
        'butter',
        'Parmesan',
        'Parsley',
        'Black Pepper',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '1lb',
        '1/2 cup',
        '1/2 cup',
        '1/2 cup',
        '2 tbsp',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        'Cook pasta according to package instructions in a large pot of boiling water and salt.Add heavy cream
and butter to a large skillet over medium heat until the cream bubbles
and the butter melts. Whisk in parmesan
and add seasoning (salt
                   and black pepper). Let the sauce thicken slightly
and then add the pasta
and toss until coated in sauce. Garnish with parsley,
and it is ready.',
        'https://res.cloudinary.com/dajs1jldd/image/upload/v1666098966/z3mfx9mbuhcsglthucxm.jpg',
        '35ed4f16-b415-4821-a85c-b6de74a3b9f7');

SELECT * FROM recipes;


CREATE TABLE favoriterecipes ( 
        idMeal VARCHAR(200) NOT NULL, 
        strTags VARCHAR(200),
        strMeal VARCHAR(200) NOT NULL,
        strCategory VARCHAR(200) NOT NULL,
        strArea VARCHAR(200) NOT NULL,
        strIngredient1 VARCHAR(200) NOT NULL,
        strIngredient2 VARCHAR(200),
        strIngredient3 VARCHAR(200),
        strIngredient4 VARCHAR(200),
        strIngredient5 VARCHAR(200),
        strIngredient6 VARCHAR(200),
        strIngredient7 VARCHAR(200),
        strIngredient8 VARCHAR(200),
        strIngredient9 VARCHAR(200),
        strIngredient10 VARCHAR(200),
        strIngredient11 VARCHAR(200),
        strIngredient12 VARCHAR(200),
        strIngredient13 VARCHAR(200),
        strIngredient14 VARCHAR(200),
        strIngredient15 VARCHAR(200),
        strIngredient16 VARCHAR(200),
        strIngredient17 VARCHAR(200),
        strIngredient18 VARCHAR(200),
        strIngredient19 VARCHAR(200),
        strIngredient20 VARCHAR(200),
        strMeasure1 VARCHAR(200) NOT NULL,
        strMeasure2 VARCHAR(200),
        strMeasure3 VARCHAR(200),
        strMeasure4 VARCHAR(200),
        strMeasure5 VARCHAR(200),
        strMeasure6 VARCHAR(200),
        strMeasure7 VARCHAR(200),
        strMeasure8 VARCHAR(200),
        strMeasure9 VARCHAR(200),
        strMeasure10 VARCHAR(200),
        strMeasure11 VARCHAR(200),
        strMeasure12 VARCHAR(200),
        strMeasure13 VARCHAR(200),
        strMeasure14 VARCHAR(200),
        strMeasure15 VARCHAR(200),
        strMeasure16 VARCHAR(200),
        strMeasure17 VARCHAR(200),
        strMeasure18 VARCHAR(200),
        strMeasure19 VARCHAR(200),
        strMeasure20 VARCHAR(200),
        strInstructions VARCHAR(2000000),
        strMealThumb VARCHAR(20000),
        userid UUID NOT NULL,
        CONSTRAINT fk_user
                FOREIGN KEY(userid) 
                REFERENCES users(id) 
        );
        
SELECT * FROM favoriterecipes;
