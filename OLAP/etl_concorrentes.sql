INSERT INTO tb_concorrente (id_concorrente, id_data_compra, quantidade, valor)
SELECT 
    SQ_CONCORRENTE.nextval,
    d.id_data_compra,
    e.quantidade,
    e.valor
FROM  
    concorrentes_external_table e
JOIN 
    tb_data_compra d
ON ((e.mes BETWEEN 1 AND 4 AND d.quadrimestre = 1 AND d.ano = e.ano) 
OR (e.mes BETWEEN 5 AND 8 AND d.quadrimestre = 2 AND d.ano = e.ano) 
OR (e.mes BETWEEN 9 AND 12 AND d.quadrimestre = 3 AND d.ano = e.ano));
--Filtrando as entradas do insert por quadrimestre
