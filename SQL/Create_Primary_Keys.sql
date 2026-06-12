ALTER TABLE dim_valuetype
	ADD PRIMARY KEY (`Tipo Valor`);
    
ALTER TABLE dim_saleschannel
	ADD PRIMARY KEY (`Canal`);
    
ALTER TABLE dim_product_codification
	ADD PRIMARY KEY (`Codif_Producto`);
    
ALTER TABLE dim_product
	ADD PRIMARY KEY (`Descripcion_producto`);
    
ALTER TABLE dim_launchyear
	ADD PRIMARY KEY (`Año Lanzamiento`);
    
ALTER TABLE dim_country
	ADD PRIMARY KEY (`Country`);
    
ALTER TABLE dim_company
	ADD PRIMARY KEY (`Compañía`);
    
ALTER TABLE dim_client
	ADD PRIMARY KEY (`NOMBRE CLIENTE`)
