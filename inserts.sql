INSERT INTO `Projeto` (`id`, `nome`) VALUES(1, 'Projeto 1');
INSERT INTO `Projeto` (`id`, `nome`) VALUES(2, 'Projeto 2');

INSERT INTO `Equipamento` (`id`, `location`, `speedLimit`, `projeto_id`) VALUES(1, 'Localização 1', 100, 1);
INSERT INTO `Equipamento` (`id`, `location`, `speedLimit`, `projeto_id`) VALUES(2, 'Localização 2', 80, 1);
INSERT INTO `Equipamento` (`id`, `location`, `speedLimit`, `projeto_id`) VALUES(3, 'Localização 3', 60, 2);
INSERT INTO `Equipamento` (`id`, `location`, `speedLimit`, `projeto_id`) VALUES(4, 'Localização 4', 80, 2);


INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(1, '2020-07-24 13:00:00', 80, 1);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(2, '2020-07-24 14:00:00', 100, 1);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(3, '2020-07-24 15:00:00', 120, 1);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(4, '2020-07-24 16:00:00', 88, 1);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(5, '2020-07-23 13:00:00', 80, 2);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(6, '2020-07-23 14:00:00', 100, 2);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(7, '2020-07-23 15:00:00', 120, 2);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(8, '2020-07-23 16:00:00', 70, 2);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(9, '2020-07-24 10:00:00', 50, 3);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(10, '2020-07-24 11:00:00', 50, 3);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(11, '2020-07-24 12:00:00', 45, 3);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(12, '2020-07-24 13:00:00', 88, 3);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(13, '2020-07-23 10:00:00', 80, 4);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(14, '2020-07-23 11:00:00', 85, 4);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(15, '2020-07-23 12:00:00', 99, 4);
INSERT INTO `Passagem` (`id`, `passagemTime`, `speed`, `equipamento_id`) VALUES(16, '2020-07-23 13:00:00', 70, 4);

/*Observação os insertes na table AcimaLimite devem ser executados manualmente somente caso os inserts na tables Passagem tenham ocorrido antes da criação do trigger pois caso o trigger já esteja criado 
Os insertes na AcimaLimite acontecem automaticamente*/

INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(1, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(2, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(3, b'1');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(4, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(5, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(6, b'1');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(7, b'1');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(8, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(9, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(10, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(11, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(12, b'1');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(13, b'0');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(14, b'1');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(15, b'1');
INSERT INTO `AcimaLimite` (`passagem_id`, `aboveLimit`) VALUES(16, b'0');
