create database ClandestinaManager;
use ClandestinaManager;
drop database ClandestinaManager;

create table Usuario(
	email varchar(50) not null,
    login varchar(15) not null,
	nome varchar(30) not null,
	senha varchar(20) not null,
	primary key(login)
);

create table Clube(
    nome varchar(20) not null,
	primary key(nome)
);

create table Times(
	nome varchar(30) not null,
	patrimonio double not null,
	nomePresidente varchar(30) not null,
	pontuacao double not null,
	preco double not null,
    loginUsuario varchar(15),
    timecoracao varchar(20) not null,
    primary key(nome),
    foreign key(loginUsuario) references Usuario(login),
    foreign key(timecoracao) references Clube(nome)
);


create table Ranking(
	rodada int not null,
	dt date not null,
    primary key(dt)
);

create table Posicao(
	colocacao int not null,
    pontuacao double not null,
    nomeTime varchar(30) not null,
    dataRanking date not null,
    primary key(nomeTime, dataRanking),
    foreign key(nomeTime) references Times(nome),
    foreign key(dataRanking) references Ranking(dt)
);



create table Jogador(
	nome varchar(15) not null,
	id int not null,
	foto longblob null,
	pontoTotal double null,
	numJogos int null,
	ultimoPonto double null,
	variacaoPreco double null,
	mediaPontos double null,
	preco double null,
	nomeClube varchar(20),
	primary key(id),
	foreign key(nomeClube) references Clube(nome)
);

create table Possui(
	dataEntrada date not null,
    dataSaida date null,
    nomeTime varchar(20) not null,
    idJogador int not null,
    primary key(nomeTime, idJogador),
    foreign key(nomeTime) references Times(nome),
    foreign key(idJogador) references Jogador(id)
);

create table Pontos(
	idPonto int not null,
    qntPonto int not null,
    valorPonto double not null,
    descPonto varchar(100) not null,
    idJogador int not null,
    primary key (idPonto),
    foreign key (idJogador) references Jogador(id)	
);

/* Testes */

insert into Clube(nome) value('Skin Red');
insert into Clube(nome) value('Amaucho');
insert into Clube(nome) value('Champinhos');
insert into Clube(nome) value('Elite');
insert into Clube(nome) value('Embrasados');
insert into Clube(nome) value('Manchester City');
insert into Clube(nome) value('Real Omega');
insert into Clube(nome) value('Pizza Hut');
insert into Clube(nome) value('Sem Panela');
insert into Clube(nome) value('Tois FC');

select * from usuario;
select * from times;
select login,senha from usuario where login = 'pachecocl' && senha = '12345678';


select * from usuario, times
where login = 'pachecocl' and login = loginUsuario;

select *
from times as t, usuario as u
where u.login = 'pachecocl' and u.login = t.loginUsuario;

delete from times where nome='Pacheco FC';
delete from usuario where login='pachecocl';

select * from times as t, usuario as u 
where u.login = 'pachecocl' and u.login = t.loginUsuario;

delete from times where nome='Mathicia';
delete from usuario where login='matheus';

insert into usuario values('matheus@gmail.com','pakolle','Matheus','12345678');
insert into times values('Mathicia FC','',50,'Matheus',0,0,'pakolle');

insert into usuario values('cl.pchc.txr@gmail.com','pachecocl','Cleydson Pacheco','12345678');
insert into times values('Pacheco FC','',50,'Cleydson Pacheco',0,0,'pachecocl');

update usuario as u, times as t
set u.nome = 'Matheus Felipe', t.nomePresidente = 'Matheus Felipe'
where u.login = 'matheus' and t.loginUsuario = u.login;