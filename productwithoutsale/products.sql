CREATE TABLE PRODUCT (
  id INT SERIAL PRIMARY KEY,
  sku VARCHAR(40),
  product_name VARCHAR(40)
);
INSERT INTO PRODUCT VALUES('SSSSSSSSB', 'ORANGE');
INSERT INTO PRODUCT VALUES('SSSSSSSSC', 'APPLE');
INSERT INTO PRODUCT VALUES('SSSSSSSSD', 'BANANA');
INSERT INTO PRODUCT VALUES('SSSSSSSSE', 'GRAPE');
CREATE TABLE INVOICE (
  id SERIAL PRIMARY KEY,
  product_id INT,
  quantity INT,
  FOREIGN KEY(product_id) REFERENCES PRODUCT(id) ON DELETE SET NULL
);
INSERT INTO INVOICE VALUES(1, 1,1);
INSERT INTO INVOICE VALUES(2, 2,5);

// find product with no sale 
select * from product 
 where product.id not in (select product_id from invoice);

// using join
select sku,product_name from product
 left join invoice on
 product.id = invoice.product_id
 where invoice.product_id iS NULL order by sku asc;