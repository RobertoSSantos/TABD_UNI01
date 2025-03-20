BEGIN
    FOR i IN 2020..2024 LOOP
        FOR j in 1..3 LOOP
            INSERT INTO tb_data_compra (id_data_compra,quadrimestre, ano)
            VALUES (SQ_DATA_COMPRA.nextval,j, i);
        END LOOP;
    END LOOP;
END;

