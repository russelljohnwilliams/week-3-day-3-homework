DROP TABLE pets;
DROP TABLE petshops;

CREATE TABLE petshops (
  id SERIAL4 primary key,
  name VARCHAR(255)
  type VARCHAR(255)
);

CREATE TABLE pets (
  id SERIAL4 primary key,
  name VARCHAR(255),
  type VARCHAR(255),
  petshop_id INT4 references petshops(id)
);