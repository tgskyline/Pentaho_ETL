USE [STG]

SELECT * FROM [DBO].[TB_STG_PEDIDO];

SELECT * FROM [DBO].[TB_STG_CLIENTE];

SELECT * FROM [DBO].[TB_STG_TIPO_CLIENTE];

SELECT * FROM [DBO].[TB_STG_CATEGORIA_PRODUTO];

SELECT * FROM [DBO].[TB_STG_PRODUTO];

SELECT * FROM [DBO].[TB_STG_ITEM_PEDIDO];

SELECT
  COD_CLIENTE_OLTP
, NOM_CLIENTE
, EML_CLIENTE
, NOM_CIDADE_CLIENTE
, LOGRADOURO + ' -Num: '+ CONVERT(varchar(5), NUMERO) +' Complemento:'+ COMPLEMENTO
+' CEP: '+ CEP END_CLIENTE
FROM TB_STG_CLIENTE