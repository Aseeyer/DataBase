use cape_codd;

-- 2.40
SELECT SKU, SKU_Description, i.WarehouseID,
WarehouseCity, WarehouseState
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND (WarehouseCity = 'Atlanta'
OR WarehouseCity = 'Bangor'
OR WarehouseCity = 'Chicago');

-- 2.41
SELECT SKU, SKU_Description, i.WarehouseID,
WarehouseCity, WarehouseState
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND WarehouseCity IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.42
SELECT SKU, SKU_Description, i.WarehouseID,
WarehouseCity, WarehouseState
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND WarehouseCity <> 'Atlanta'
AND WarehouseCity <> 'Bangor'
AND WarehouseCity <> 'Chicago';

-- 2.43
SELECT SKU, SKU_Description, i.WarehouseID,
WarehouseCity, WarehouseState
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.44
SELECT SKU_Description || ' is located in ' || WarehouseCity
AS ItemLocation
FROM INVENTORY i JOIN WAREHOUSE w
ON i.WarehouseID = w.WarehouseID;

-- 2.45
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE WarehouseID IN (
SELECT WarehouseID
FROM WAREHOUSE
WHERE Manager = 'Lucille Smith');

-- 2.46
SELECT SKU, SKU_Description, i.WarehouseID
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND w.Manager = 'Lucille Smith';

-- 2.47
SELECT SKU, SKU_Description, i.WarehouseID
FROM INVENTORY i
JOIN WAREHOUSE w
ON i.WarehouseID = w.WarehouseID
WHERE w.Manager = 'Lucille Smith';

-- 2.48
SELECT WarehouseID,
AVG(QuantityOnHand) AS AvgQuantityOnHand
FROM INVENTORY
WHERE WarehouseID IN (
SELECT WarehouseID
FROM WAREHOUSE
WHERE Manager = 'Lucille Smith')
GROUP BY WarehouseID;

-- 2.49
SELECT i.WarehouseID,
AVG(QuantityOnHand) AS AvgQuantityOnHand
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND w.Manager = 'Lucille Smith'
GROUP BY i.WarehouseID;

-- 2.50
SELECT i.WarehouseID,
AVG(QuantityOnHand) AS AvgQuantityOnHand
FROM INVENTORY i, WAREHOUSE w
WHERE i.WarehouseID = w.WarehouseID
AND w.Manager = 'Lucille Smith'
GROUP BY i.WarehouseID;