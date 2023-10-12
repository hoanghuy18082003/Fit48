
CREATE TABLE "Order" (
    "Id" NUMBER(10) PRIMARY KEY,
    "CreateDate" DATE,
    "Status" NUMBER(1),
    "BuyerId" NUMBER(10),
    "Address" NVARCHAR2(255)
);


CREATE TABLE "OrderItem" (
    "Id" NUMBER(10) PRIMARY KEY,
    "OrderId" NUMBER(10),
    "ProductId" NUMBER(10),
    "Units" NUMBER(5),
    "UnitPrice" NUMBER(10, 2)
);

CREATE TABLE "Buyer" (
    "Id" NUMBER(10) PRIMARY KEY,
    "Name" NVARCHAR2(100),
    "PaymentMethod" NVARCHAR2(50)
    );
  
  
  
--  "Buyer"
INSERT INTO "Buyer" ("Id", "Name", "PaymentMethod")
VALUES (1, 'KH1', N'Thanh toán qua th?');

INSERT INTO "Buyer" ("Id", "Name", "PaymentMethod")
VALUES (2, 'KH2', N'Thanh toán b?ng ti?n m?t');

INSERT INTO "Buyer" ("Id", "Name", "PaymentMethod")
VALUES (3, 'KH3', N'Chuy?n kho?n ngân hàng');

INSERT INTO "Buyer" ("Id", "Name", "PaymentMethod")
VALUES (4, 'KH4', N'Thanh toán qua th?');

INSERT INTO "Buyer" ("Id", "Name", "PaymentMethod")
VALUES (5, 'KH5', N'Chuy?n kho?n ngân hàng');



--  "Order"
INSERT INTO "Order" ("Id", "CreateDate", "Status", "BuyerId", "Address")
VALUES (1, TO_DATE('2023-10-12', 'YYYY-MM-DD'), 1, 1, '???ng 1');

INSERT INTO "Order" ("Id", "CreateDate", "Status", "BuyerId", "Address")
VALUES (2, TO_DATE('2023-10-13', 'YYYY-MM-DD'), 2, 2, '???ng 2');

INSERT INTO "Order" ("Id", "CreateDate", "Status", "BuyerId", "Address")
VALUES (3, TO_DATE('2023-10-14', 'YYYY-MM-DD'), 1, 3, '???ng 3');



-- "OrderItem"
INSERT INTO "OrderItem" ("Id", "OrderId", "ProductId", "Units", "UnitPrice")
VALUES (1, 1, 201, 5, 10.99);

INSERT INTO "OrderItem" ("Id", "OrderId", "ProductId", "Units", "UnitPrice")
VALUES (2, 1, 202, 3, 15.99);

INSERT INTO "OrderItem" ("Id", "OrderId", "ProductId", "Units", "UnitPrice")
VALUES (3, 2, 203, 2, 9.99);

INSERT INTO "OrderItem" ("Id", "OrderId", "ProductId", "Units", "UnitPrice")
VALUES (4, 3, 204, 4, 12.49);

INSERT INTO "OrderItem" ("Id", "OrderId", "ProductId", "Units", "UnitPrice")
VALUES (5, 3, 205, 1, 25.99);



select * from "Buyer";

select * from "Order";

select * from "OrderItem";
--update 
UPDATE "Buyer"
SET  "Name" = 'HUY',
     "PaymentMethod" = N'TTQT'
WHERE "Id" = 1;

DELETE FROM "Buyer" WHERE "Id" = 5 


-- tìm ki?m
SELECT "Id" , "CreateDate","Status" , "Address"
FROM "Order" 
WHERE "BuyerId" = 3; 

-- join 3 table 
SELECT
    O."Id" AS OrderId,
    O."CreateDate" AS OrderCreateDate,
    O."Status" AS OrderStatus,
    O."Address" AS OrderAddress,
    B."Name" AS BuyerName,
    B."PaymentMethod" AS BuyerPaymentMethod,
    Od."ProductId" AS OrderItemProductId,
    Od."Units" AS OrderItemUnits,
    Od."UnitPrice" AS OrderItemUnitPrice
FROM "Order" O
JOIN "Buyer" B ON O."BuyerId" = B."Id"
JOIN "OrderItem" Od ON O."Id" = OI."OrderId";






