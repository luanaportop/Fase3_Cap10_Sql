-- CONSULTA: PRODUÇÃO TOTAL DA CULTURA, POR ESTADO E ANO DA SAFRA

SELECT 
    t_estado.nome_estado,
    t_cultura.nome_cultura,
    t_safra.ano_safra,
    SUM(t_dados_plantacao.qtd_produzida) AS producao_total
FROM 
    t_dados_plantacao
JOIN 
    t_estado ON t_dados_plantacao.id_estado = t_estado.id_estado
JOIN 
    t_cultura ON t_dados_plantacao.id_cultura = t_cultura.id_cultura
JOIN 
    t_safra ON t_dados_plantacao.id_safra = t_safra.id_safra
WHERE 
    t_cultura.id_cultura = 3 -- ID da cultura que deseja consultar
    AND t_estado.id_estado = 10 -- ID do estado que deseja consultar
    AND t_safra.ano_safra = 2023 -- Alterar para o ano da safra que desja consultar
GROUP BY 
    t_estado.nome_estado, 
    t_cultura.nome_cultura, 
    t_safra.ano_safra;
    

-- CONSULTA: PRODUÇÃO ACUMULADA DA CULTURA DE TODOS OS ANOS POR ESTADO (2019 A 2023)

SELECT 
    t_cultura.nome_cultura,
    t_estado.nome_estado,
    SUM(t_dados_plantacao.qtd_produzida) AS producao_acumulada
FROM 
    t_dados_plantacao
JOIN 
    t_cultura ON t_dados_plantacao.id_cultura = t_cultura.id_cultura
JOIN 
    t_estado ON t_dados_plantacao.id_estado = t_estado.id_estado
WHERE 
    t_cultura.id_cultura = 3 -- ID da cultura que deseja consultar
GROUP BY 
    t_cultura.nome_cultura,
    t_estado.nome_estado
ORDER BY 
    t_estado.nome_estado;


-- CONSULTA: EVOLUÇÃO DA AREA PLANTADA AO LONGO DOS ANOS

SELECT 
    t_safra.ano_safra,
    SUM(t_dados_plantacao.area_plantada) AS total_area_plantada
FROM 
    t_dados_plantacao
JOIN 
    t_safra ON t_dados_plantacao.id_safra = t_safra.id_safra
WHERE 
    t_dados_plantacao.id_cultura = 2  -- Escolha o ID da cultura que deseja consultar
GROUP BY 
    t_safra.ano_safra
ORDER BY 
    t_safra.ano_safra;
