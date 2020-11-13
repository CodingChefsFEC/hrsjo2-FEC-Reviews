-- mysql -u root -p < database/schema.sql

DROP DATABASE IF EXISTS reviews;

CREATE DATABASE reviews;

USE reviews;

-- CREATE TABLE users (
--   id INT AUTO_INCREMENT,
--   userId INT,
--   username VARCHAR(25),
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE products (
--   id INT AUTO_INCREMENT,
--   productId INT,
--   productName VARCHAR(100),
--   PRIMARY KEY (id)
-- );

CREATE TABLE reviews (
  id INT AUTO_INCREMENT,
  -- userId INT,
  -- productId INT,
  productId INT,
  username VARCHAR(255),
  productName VARCHAR(255),
  reviewText VARCHAR(1000),
  reviewDate DATE DEFAULT (CURRENT_DATE),
  broadAgeAppeal INT,
  lengthOfPlay INT,
  quality INT,
  value INT,
  average DECIMAL(3, 2),
  -- FOREIGN KEY (userId)
  --   REFERENCES users(id),
  -- FOREIGN KEY (productId)
  --   REFERENCES products(id),
  PRIMARY KEY (id)
);

-- INSERT INTO users (userId, username) values (10001, 'maxeinhorn');
-- INSERT INTO users (userId, username) values (10002, 'maximus');
-- INSERT INTO users (userId, username) values (10003, 'maximillius');
-- INSERT INTO users (userId, username) values (10004, 'maximillian');
-- INSERT INTO users (userId, username) values (10005, 'maxwell');
-- INSERT INTO users (userId, username) values (10006, 'maximusprime');
-- INSERT INTO users (userId, username) values (10007, 'max');


-- INSERT INTO products (productID, productName) values (100001, 'Settlers of Catan');
-- INSERT INTO products (productID, productName) values (100002, 'Settlers of Bhutan');
-- INSERT INTO products (productID, productName) values (100003, 'Settlers of Gadol');
-- INSERT INTO products (productID, productName) values (100004, 'Settlers of Mars');
-- INSERT INTO products (productID, productName) values (100005, 'Settlers of Antarctica');
-- INSERT INTO products (productID, productName) values (100006, 'Settlers of Catalan');

INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Western lowland gorilla',  'Settlers of Catan',  'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.',  '2020-04-29',  5,  2,  3,  4,  3.5);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Flightless cormorant',  'Settlers of Catan',  'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.',  '2020-09-20',  3,  4,  1,  3,  2.75);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Roller, lilac-breasted',  'Settlers of Catan',  'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.',  '2020-03-04',  3,  1,  2,  4,  2.5);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Wallaby, river',  'Settlers of Catan',  'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.',  '2020-07-09',  4,  5,  3,  1,  3.25);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Whale, baleen',  'Settlers of Catan',  'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',  '2019-09-06',  2,  2,  2,  2,  2);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Cobra (unidentified)',  'Settlers of Catan',  'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.',  '2019-09-16',  5,  1,  2,  1,  2.25);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('0',  'Goose, egyptian',  'Settlers of Catan',  'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.',  '2020-10-09',  1,  5,  3,  5,  3.5);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('1',  'Owl, australian masked',  'Settlers of Gadol',  'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',  '2020-06-29',  3,  1,  2,  1,  1.75);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('1',  'Sheep, stone',  'Settlers of Gadol',  'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.',  '2020-11-05',  5,  1,  1,  3,  2.5);
INSERT INTO reviews (productId, username, productName, reviewText, reviewDate, broadAgeAppeal, lengthOfPlay, quality, value, average) values ('1',  'Lechwe, kafue flats',  'Settlers of Gadol',  'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',  '2019-09-23',  5,  4,  2,  2,  3.25);