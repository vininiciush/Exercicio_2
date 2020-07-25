/*1 - Monte uma busca para criação de um relatório que apresente todas as passagens de um projeto em
período determinado. O resultado deve listar, além dos dados da passagem, a identificação de seu
respectivo equipamento. Ordenar a lista por equipamento e data e hora da passagem.*/

SELECT
    *
FROM
    Passagem
INNER JOIN
    Equipamento
ON
    Passagem.equipamento_id = Equipamento.id
WHERE
    Passagem.passagemTime >= '2020-07-23 13:00:00' AND Passagem.passagemTime <= '2020-07-25 16:00:00' AND Equipamento.projeto_id = 1
ORDER BY
    Passagem.equipamento_id,
    Passagem.passagemTime;

/*2 - Monte uma busca que para cada projeto apresente o total de passagens, total de passagens com
excesso de velocidade e a média de velocidade das passagens com excesso de velocidade. Realizar a
consulta sobre todas as passagens de um conjunto de projetos*/

SELECT
    COUNT(Passagem.id) AS "Total de excessos",
    ROUND(AVG(Passagem.speed)) AS "Média dos Excessos",
    (
    SELECT
        COUNT(Passagem.id)
    FROM
        Passagem
    INNER JOIN
        Equipamento
    ON
        Passagem.equipamento_id = Equipamento.id
    WHERE
        Equipamento.projeto_id = 1
) AS "Total de passagens"
FROM
    Passagem
INNER JOIN
    AcimaLimite
ON
    AcimaLimite.passagem_id = Passagem.id
INNER JOIN
    Equipamento
ON
    Passagem.equipamento_id = Equipamento.id
WHERE
    AcimaLimite.aboveLimit = 1 AND Equipamento.projeto_id = 1;
    
/*3 - Crie uma trigger que ao registrar uma passagem de veículo realize a lógica para assinalar se a
passagem excedeu o limite de velocidade*/

DELIMITER $$
CREATE TRIGGER `speedLimit_Trigger` AFTER INSERT ON `Passagem` FOR EACH ROW BEGIN

	declare limite int(11);
 
    SELECT speedLimit into limite FROM Equipamento WHERE NEW.equipamento_id = Equipamento.id;
	
    IF(NEW.speed > limite) THEN
    	INSERT into AcimaLimite(passagem_id,aboveLimit) value(NEW.id,b'1');
    ELSE 
    	INSERT into AcimaLimite(passagem_id,aboveLimit) value(NEW.id,b'0');
    END IF;
END
$$
DELIMITER ;




