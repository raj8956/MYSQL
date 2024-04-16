-- CLEANING THE DATASET 'NETFLIX'
----------------------------------

-- This query help to create the backup of the dataset which helps to protect the original dataset. 
CREATE TABLE netflix_backup as
SELECT * FROM netflix;

-- find all the row and columns of Netflix dataset
SELECT * FROM netflix;

-- This query grouops the dataset by type and also counts the total number. 
SELECT type, count(type)
FROM netflix
GROUP BY type
ORDER BY type DESC;

-- This query really helps dataset to add new column "modefied_show_id".
ALTER TABLE netflix ADD COLUMN modefied_show_id INTEGER;

-- Here, I have updated the dataset with modified_show_id column after removing the first character 's' using substring functions.
UPDATE netflix
SET modefied_show_id = 	cast(SUBSTRING(show_id,2 ) AS integer);

-- confirmation after updating the 'modefied_show_id' column and sort the column in ascending order
SELECT show_id, modefied_show_id
FROM netflix
ORDER BY modefied_show_id;

--This grouping the column by country helps to check whether there any misplaced country in the dataset. 
SELECT country, COUNT(country)
FROM netflix
GROUP BY country
ORDER BY country;

