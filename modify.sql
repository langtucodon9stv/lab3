
connect 'd:/library_films.fdb' user 'SYSDBA' password 'masterkey';

alter table drop cinema;
alter table drop bilet;

create table cinema(
    cinema_id int not null primary key,
    title varchar(16),
    address varchar(255)
);

create table bilet(
    bilet_id int not null primary key,
    film_id int not null,
    cinema_id int not null,
    price float not null, 
    date_reply varchar(10) NOT NULL
);
ALTER TABLE cinema ADD CONSTRAINT inema_fk0 FOREIGN KEY (film_id) REFERENCES Film(film_id);
alter table bilet add constraint bilet_fk0 foreign key (film_id) references film(film_id);
alter table bilet add constraint bilet_fk1 foreign key (cinema_id) references cinema(cinema_id);








