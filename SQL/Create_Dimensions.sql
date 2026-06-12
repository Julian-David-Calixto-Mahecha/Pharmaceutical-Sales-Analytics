CREATE TABLE Dim_Country AS
	SELECT DISTINCT País 
	FROM fact_table;

CREATE TABLE Dim_Client AS
	SELECT DISTINCT `NOMBRE CLIENTE`
	FROM fact_table;

CREATE TABLE Dim_Producto AS
	SELECT DISTINCT `Descripcion_producto`
    FROM fact_table;
    
CREATE TABLE Dim_Canal AS
	SELECT DISTINCT Canal
    FROM fact_table;

CREATE TABLE dim_launchyear AS
	SELECT DISTINCT `Año Lanzamiento`
    FROM fact_table;
    
CREATE TABLE Dim_ValueType AS
	SELECT DISTINCT `Tipo Valor`
	FROM fact_table;
    
CREATE TABLE Dim_Company AS
	SELECT DISTINCT Compañía
    FROM fact_table;
    
CREATE TABLE Dim_Product_Codification
	SELECT  DISTINCT Codif_Producto
	FROM fact_table;
