CREATE DATABASE apple_superstore;
USE apple_superstore;
SELECT * FROM applestore2;

/* Q1: Which are the different genres?*/ 
SELECT DISTINCT prime_genre FROM applestore2;

/* Q2: Which is the genre with more apps rated?*/ -- I don`t understand the question, I'll do the genre with the MOST rated Apps rated instead

SELECT prime_genre, rating_count_tot
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 1;

/* Q3: Which is the genre with more apps?*/ -- I don`t understand the question, I'll do the genre with the MOST Apps instead

SELECT prime_genre, COUNT(track_name) AS track_count
FROM applestore2
GROUP BY prime_genre
ORDER BY track_count DESC
LIMIT 1;

/* Q4: Which is the one with less?*/ -- Same as above. I don`t understand the question, I'll do the genre with the LEAST Apps instead

SELECT prime_genre, COUNT(track_name) AS track_count
FROM applestore2
GROUP BY prime_genre
ORDER BY track_count ASC
LIMIT 1;

/* Q5: Take the 10 apps most rated.*/

SELECT track_name, rating_count_tot
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;


/* Q6: Take the 10 apps best rated by users.*/

SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

/* Q7: Take a look on the data you retrieved in the question 5. Give some insights.*/

SELECT track_name, rating_count_tot, prime_genre
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

-- allowed myself to add the genre to prove my point that the most rated apps are Social Network Apps and Games (since I don´T know all of them)
-- No 1 Facebook most rated app with almost 50% lead ahead of Instagram 

/* Q8: Take a look on the data you retrieved in the question 6. Give some insights.*/

SELECT * FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, user_rating, prime_genre
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

-- interesting is that I get differrent apps, when I use select all
-- among the best rated apps are games again, but the leading ones are Entertainment und Health and Fitness

/* Q9:Now compare the data from questions 5 and 6. What do you see?*/

-- The most rated apps are not necessarily the top rated apps

/* Q10: How could you take the top 3 regarding the user ratings but also the number of votes?*/

-- Where to find the votes? What are votes? 

/* Q11: Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?*/

-- Assuming that every rating came as a result of a download (idea from Avnish on kaggle.com) -> number of ratings = number of downloads:

 SELECT track_name, rating_count_tot, price
FROM applestore2
ORDER BY rating_count_tot DESC;

 SELECT track_name, rating_count_tot, price
FROM applestore2
ORDER BY price DESC;

SELECT price, SUM(rating_count_tot) AS downloads
FROM applestore2
GROUP BY price
ORDER BY downloads DESC;

-- the most downloaded apps are the free ones (what a surprise!)
-- the ranking of number of downloads in descending order almost overlaps with the price ranking in ascending order for the top 10
-- this suggests the lower the price the more downloads 
-- besides the top 10  the order is way more random 
-- Conclusion: up to a price of approximately 9.99$ there is a correlation between price and number of downloads 


 
















