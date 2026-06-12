ALTER TABLE fact_table
ADD CONSTRAINT fk_client
FOREIGN KEY (`client`) REFERENCES dim_client (`NOMBRE CLIENTE`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_saleschannel
FOREIGN KEY (`Sales_Channel`) REFERENCES dim_saleschannel (`Canal`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_company
FOREIGN KEY (`Company`) REFERENCES dim_company (`Compañía`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_country
FOREIGN KEY (`Country`) REFERENCES dim_country (`Country`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_launchyear
FOREIGN KEY (`Launch_Year`) REFERENCES dim_launchyear (`Año Lanzamiento`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_product
FOREIGN KEY (`Product`) REFERENCES dim_product (`Descripcion_producto`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_product_codification
FOREIGN KEY (`Codif_Producto`) REFERENCES dim_product_codification (`Codif_Producto`);

ALTER TABLE fact_table
ADD CONSTRAINT fk_sales
FOREIGN KEY (`Value_Type`) REFERENCES dim_valuetype (`Tipo Valor`);
