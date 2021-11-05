create table SBOX_PF_MKT.PALABRA_CLAVE as(
(SELECT DISTINCT 
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[0]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[0]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[1]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[1]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[2]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[2]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[3]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[3]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[4]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[4]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[5]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[5]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[6]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[6]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[7]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[7]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[8]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[8]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[9]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[9]')) IS NOT NULL
and ds > '2021-08-01')
union distinct 
(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[10]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[10]')) IS NOT NULL
and ds > '2021-08-01'))



-----------------



insert into SBOX_PF_MKT.PALABRA_CLAVE 

(SELECT DISTINCT 
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[0]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` B
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[0]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[0]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[1]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[1]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[1]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[2]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS`
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[2]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[2]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[3]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[3]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[3]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[4]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[4]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[4]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[5]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[5]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[5]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[6]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[6]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[6]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[7]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS`
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[7]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[7]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[8]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[8]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[8]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[9]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS` 
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[9]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[9]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')

union distinct 

(SELECT DISTINCT
cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[10]')) as numeric) shipment,
1*1 AS PC
FROM `meli-bi-data.MELIDATA.TRACKS`
LEFT JOIN SBOX_PF_MKT.PALABRA_CLAVE A ON A.shipment=cast(JSON_VALUE(JSON_QUERY(event_data,'$.shipments[10]')) as numeric)
where 1 = 1
and device.platform like '/mobile/%'
and path = '/logistics/last_mile/package/security_keyword'
AND JSON_VALUE(JSON_QUERY(event_data,'$.shipments[10]')) IS NOT NULL
AND A.shipment IS NULL
and ds >= '2021-01-01'
and ds < '2021-08-01')