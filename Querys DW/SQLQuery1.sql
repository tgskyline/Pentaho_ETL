USE [DW]

SELECT * FROM [DBO].[TB_DIM_MES]

SELECT * FROM [DBO].[TB_DIM_ESTADO]

SELECT * FROM [DBO].[TB_DIM_CLIENTE]

USE DW;
------SCRIPT AUXLIAR TB_DIM_TIPO_CLIENTE
ALTER TABLE DBO.TB_DIM_TIPO_CLIENTE ADD VERSAO INT
;
ALTER TABLE DBO.TB_DIM_TIPO_CLIENTE ADD DATA_INICIO_VIGENCIA DATETIME
;
ALTER TABLE DBO.TB_DIM_TIPO_CLIENTE ADD DATA_FIM_VIGENCIA DATETIME
;
SELECT * FROM [DBO].[TB_DIM_TIPO_CLIENTE]
ORDER BY 2

INSERT INTO [DBO].[TB_DIM_TIPO_CLIENTE] VALUES (0,0,'SCD2',NULL, NULL, NULL);

ALTER TABLE DBO.TB_DIM_CATEGORIA_PRODUTO ADD VERSAO INT
;
ALTER TABLE DBO.TB_DIM_CATEGORIA_PRODUTO ADD DATA_INICIO_VIGENCIA DATETIME
;
ALTER TABLE DBO.TB_DIM_CATEGORIA_PRODUTO ADD DATA_FIM_VIGENCIA DATETIME

INSERT INTO [DBO].[TB_DIM_CATEGORIA_PRODUTO] VALUES (0,0,'SCD2',NULL, NULL, NULL);

SELECT * FROM DBO.TB_DIM_CATEGORIA_PRODUTO

SELECT * FROM DBO.TB_DIM_PRODUTO WHERE COD_PRODUTO_NK = 11

USE STG
SELECT * FROM DBO.TB_STG_PRODUTO WHERE COD_PRODUTO_OLTP = 11

USE DW
SELECT * FROM DBO.TB_DIM_CATEGORIA_PRODUTO WHERE COD_CATEGORIA_PRODUTO_NK = 80


USE DW;

INSERT INTO TB_DIM_CATEGORIA_PRODUTO  VALUES (-1, -1, 'N?O CADASTRADO',NULL,NULL,NULL);

SET IDENTITY_INSERT TB_DIM_PRODUTO ON; 

INSERT INTO TB_DIM_PRODUTO ([SRK_PRODUTO],[NOM_PRODUTO],[COD_PRODUTO_NK],[SRK_CATEGORIA_PRODUTO]) VALUES (-1,'N?O CADASTRADO',-1, -1);
SET IDENTITY_INSERT TB_DIM_PRODUTO OFF; 

SET IDENTITY_INSERT DBO.TB_DIM_CLIENTE ON;  
INSERT INTO TB_DIM_CLIENTE (SRK_CLIENTE, [COD_CLIENTE_NK],[NOM_CLIENTE],
[END_CLIENTE],[EML_CLIENTE],[NOM_CIDADE_CLIENTE])VALUES(-1,-1,'N?O CADASTRADO','N?O CADASTRADO','N?O CADASTRADO','N?O CADASTRADO');
SET IDENTITY_INSERT DBO.TB_DIM_CLIENTE OFF; 

SET IDENTITY_INSERT TB_DIM_ESTADO ON; 
INSERT INTO TB_DIM_ESTADO ([SRK_ESTADO],[COD_ESTADO_NK],[NOM_ESTADO]) VALUES (-1, '-1', 'N?O CADASTRADO');
SET IDENTITY_INSERT TB_DIM_ESTADO OFF; 

INSERT INTO TB_DIM_TIPO_CLIENTE VALUES (-1, -1, 'N?O CADASTRADO',NULL,NULL,NULL);

SELECT * FROM DBO.TB_FATO_PEDIDO

DELETE FROM DBO.TB_FATO_PEDIDO


