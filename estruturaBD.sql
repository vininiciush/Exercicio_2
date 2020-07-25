CREATE TABLE `Equipamento` (
  `id` int(11) NOT NULL,
  `location` varchar(255),
  `speedLimit` int(11),
  `projeto_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Passagem` (
  `id` int(11) NOT NULL,
  `passagemTime` datetime,
  `speed` int(11),
  `equipamento_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Projeto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*A indicação de passagem acima do limite foi criada em uma tabela diferente da Passagem pois 
o mysql não aceita que um trigger de uma determinada tabela modifique ela mesma pra evitar chamada recursiva do trigger
Desta forma é possivel a criação do trigger do exercicio 3*/
CREATE TABLE `AcimaLimite` (
  `passagem_id` int(11) NOT NULL,
  `aboveLimit` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `AcimaLimite`
  ADD PRIMARY KEY (`passagem_id`);

ALTER TABLE `Equipamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6nkv1wog5e6sj65afgwns334b` (`projeto_id`);

ALTER TABLE `Passagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgaa29myeyp4jaactmd1blin2i` (`equipamento_id`);

ALTER TABLE `Projeto`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Equipamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `Passagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `Projeto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `Equipamento`
  ADD CONSTRAINT `FK6nkv1wog5e6sj65afgwns334b` FOREIGN KEY (`projeto_id`) REFERENCES `Projeto` (`id`);

ALTER TABLE `Passagem`
  ADD CONSTRAINT `FKgaa29myeyp4jaactmd1blin2i` FOREIGN KEY (`equipamento_id`) REFERENCES `Equipamento` (`id`);
