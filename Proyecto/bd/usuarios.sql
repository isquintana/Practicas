create table bot.usuario (id_usuario int auto_increment not null, nombre varchar(55) not null, a_paterno varchar(55) not null, a_materno varchar(55) not null,
nickname varchar(55) not null, email varchar(55) not null, contra varchar(55) not null, telefono varchar(55) not null, f_nacimiento date not null, primary key(id_usuario))engine innoDB;