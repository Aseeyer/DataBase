use cape_codd;

-- 2.17

select SKU, SKU_Description
from INVENTORY;

-- 2.18
select SKU_Description, SKU
from INVENTORY;

-- 2.19
select WarehouseID as ID
from INVENTORY;

-- 2.20
select distinct WarehouseID as ID
from INVENTORY;

-- 2.22
select *
from INVENTORY;

-- 2.23
select QuantityOnHand 
from INVENTORY;

-- 2.24
SELECT SKU, SKU_Description
FROM INVENTORY
WHERE QuantityOnHand = 0;

-- 2.25
select SKU, SKU_Description and WarehouseID
from INVENTORY
where QuantityOnHand > 0;

-- 2.26 
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.27
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
  AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.28
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
   OR QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1
  AND QuantityOnHand < 10;

