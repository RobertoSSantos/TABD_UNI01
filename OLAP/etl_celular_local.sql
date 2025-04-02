-- ETL tb_celular
insert into tb_celular (id_celular, modelo, marca) 
select SQ_celular.nextval, M.DESCRICAO, A.DESCRICAO FROM c##OLTP.modelo M join c##OLTP.marca A on (M.id_marca = A.id_marca);
-- Pega o modelo e marca do modelo OLTP


-- ETL tb_local
insert into tb_local (id_local, cidade, estado) 
select SQ_local.nextval, C.DESCRICAO, E.DESCRICAO FROM c##OLTP.cidade C join c##OLTP.estado E on (C.id_estado = E.id_estado)
where C.descricao not in ('SSA', 'RJ', 'SP');
--Pega cidade e estado do modelo OLTP, excluindo as cidades duplicatas
