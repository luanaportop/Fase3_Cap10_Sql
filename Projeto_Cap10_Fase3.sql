-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-11-10 13:47:13 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_cultura ( 
--  Identificador da Cultura
    id_cultura   NUMBER NOT NULL, 
--  Nome da Cultura
    nome_cultura VARCHAR2(50 CHAR) NOT NULL, 
--  Tipo da cultura, como por exemplo, fruta, vegetal, grão.
    tipo_cultura VARCHAR2(50 CHAR)
);

ALTER TABLE t_cultura ADD CONSTRAINT t_cultura_pk PRIMARY KEY ( id_cultura );

CREATE TABLE t_dados_plantacao ( 
--  Identificador da Plantação
    id_plantacao     NUMBER NOT NULL, 
--  Identificação da Cultura e relacionamento com a tabela "tb_cultura".
    id_cultura       NUMBER NOT NULL, 
--  Identificador Estado e relacionamento com a tabela "tb_estado".
    id_estado        NUMBER NOT NULL, 
--  Identificação Safra e relacionamento com a tabela "tb_safra".
    id_safra         NUMBER NOT NULL, 
--  Total da área plantada em hectares.
    area_plantada    FLOAT NOT NULL, 
--  Total da área colhida em hectares.
    area_colhida     FLOAT NOT NULL, 
--  Quantidade da produção em toneladas.
    qtd_produzida    FLOAT NOT NULL, 
--  Valor da produção em  (mil reais).
    valor_producao   FLOAT NOT NULL, 
--  Rendimento médio da produção (quilogramas por hectare)
    rendimento_medio FLOAT NOT NULL
);

ALTER TABLE t_dados_plantacao
    ADD CONSTRAINT t_dados_plantacao_pk PRIMARY KEY ( id_plantacao,
                                                      id_cultura,
                                                      id_estado,
                                                      id_safra );

CREATE TABLE t_estado ( 
--  Identificador do Estado
    id_estado   NUMBER NOT NULL, 
--  Nome do estado
    nome_estado VARCHAR2(50 CHAR) NOT NULL, 
--  Região do Estado
    regiao      VARCHAR2(50 CHAR)
);

ALTER TABLE t_estado ADD CONSTRAINT t_estado_pk PRIMARY KEY ( id_estado );

CREATE TABLE t_safra ( 
--  identificador da safra
    id_safra        NUMBER NOT NULL, 
--  Se é a primeira ou segunda safra.
    descricao_safra VARCHAR2(50 CHAR), 
--  Ano da Safra
    ano_safra       NUMBER(4) NOT NULL
);

ALTER TABLE t_safra ADD CONSTRAINT t_safra_pk PRIMARY KEY ( id_safra );

ALTER TABLE t_dados_plantacao
    ADD CONSTRAINT t_dados_plantacao_t_cultura_fk FOREIGN KEY ( id_cultura )
        REFERENCES t_cultura ( id_cultura );

ALTER TABLE t_dados_plantacao
    ADD CONSTRAINT t_dados_plantacao_t_estado_fk FOREIGN KEY ( id_estado )
        REFERENCES t_estado ( id_estado );

ALTER TABLE t_dados_plantacao
    ADD CONSTRAINT t_dados_plantacao_t_safra_fk FOREIGN KEY ( id_safra )
        REFERENCES t_safra ( id_safra );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

