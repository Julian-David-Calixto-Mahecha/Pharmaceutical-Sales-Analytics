-- Adjust Columns Content

ALTER TABLE dim_valuetype
MODIFY COLUMN `Tipo Valor` VARCHAR(30);

ALTER TABLE dim_product_codification
MODIFY COLUMN `Codif_Producto` VARCHAR(30);

ALTER TABLE dim_product
MODIFY COLUMN `Descripcion_producto` VARCHAR(25);

ALTER TABLE dim_launchyear
MODIFY COLUMN `Año Lanzamiento` VARCHAR(5);

ALTER TABLE dim_country
MODIFY COLUMN `Country` VARCHAR(20);

ALTER TABLE dim_company
MODIFY COLUMN `Compañía` VARCHAR(30);

ALTER TABLE dim_client
MODIFY COLUMN `NOMBRE CLIENTE` VARCHAR(30);

ALTER TABLE dim_saleschannel
MODIFY COLUMN `Canal` VARCHAR(20);

-- Once dimensions were generated from main table, it was created a dimension cleaning of null spaces

DELETE FROM dim_client
WHERE `NOMBRE CLIENTE` IS NULL;

DELETE FROM dim_company
WHERE `Compañía` IS NULL;

DELETE FROM dim_country
WHERE `Country` IS NULL;

DELETE FROM dim_launchyear
WHERE `Año Lanzamiento` IS NULL;

DELETE FROM dim_product
WHERE `Descripcion_producto` IS NULL;

DELETE FROM dim_product_codification
WHERE `Codif_Producto` IS NULL;

DELETE FROM dim_saleschannel
WHERE `Canal` IS NULL;

DELETE FROM dim_valuetype
WHERE `Tipo Valor` IS NULL;

-- Column name changed to make an easier handling of the data

ALTER TABLE fact_table
RENAME COLUMN País TO Country;

ALTER TABLE fact_table
RENAME COLUMN Canal TO Sales_Channel;

ALTER TABLE fact_table
RENAME COLUMN `NOMBRE CLIENTE` TO Client;

ALTER TABLE fact_table
RENAME COLUMN Descripcion_producto TO Product;

ALTER TABLE fact_table
RENAME COLUMN `Año Lanzamiento` TO Launch_Year;

ALTER TABLE fact_table
RENAME COLUMN Compañía TO Company;

ALTER TABLE fact_table
RENAME COLUMN `Tipo Valor` TO Value_Type;

ALTER TABLE fact_table
RENAME COLUMN `Venta total` TO Total_Sales;

ALTER TABLE fact_table
RENAME COLUMN `Venta YTD` TO YTD_Sales;

ALTER TABLE fact_table
RENAME COLUMN `Presupuesto YTD` TO Budget;

ALTER TABLE fact_table
RENAME COLUMN Es_VentaNeta TO IsNetSale;
