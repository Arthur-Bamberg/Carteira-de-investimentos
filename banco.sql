create table client (
    idClient number primary key,
    name varchar(50) not null,
    email varchar(50) not null,
    password varchar(50) not null
);

create table reit (
    idReit number primary key,
    code varchar(6) not null,
    name varchar(50),
    section varchar(20),
    subsection varchar(20),
    mainIndex varchar(5)
);

create table stock (
    idStock number primary key,
    code varchar(6) not null,
    name varchar(50),
    section varchar(20),
    subsection varchar(20),
    mainIndex varchar(5)
);

create table clientReit (
    FK_idClient number,
    FK_idReit number,
    quantity number,
    objective varchar(100),
    risk varchar(20),
    fundamentals varchar(100),
    strategy varchar(100),
    caution varchar(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idReit) references reit(idReit),
    primary key (FK_idClient, FK_idReit)
);

create table clientStock (
    FK_idClient number,
    FK_idStock number,
    quantity number,
    objective varchar(100),
    risk varchar(20),
    fundamentals varchar(100),
    strategy varchar(100),
    caution varchar(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idStock) references Stock(idStock),
    primary key (FK_idClient, FK_idStock)
);

create table reitAcquisition (
    idReitAcquisition number primary key,
    FK_idReit number,
    FK_idClient number,
    date date,
    quantity number,
    price number,
    foreign key (FK_idReit) references reit(idReit),
    foreign key (FK_idClient) references client(idClient)
);

create table stockAcquisition (
    idStockAcquisition number primary key,
    FK_idStock number,
    FK_idClient number,
    date date,
    quantity number,
    price number,
    foreign key (FK_idStock) references stock(idStock),
    foreign key (FK_idClient) references client(idClient)
);

create table keepAnEyeOnReit (
    FK_idClient number,
    FK_idReit number,
    lastDaySeen date,
    price number,
    fairPrice number,
    reason varchar(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idReit) references reit(idReit),
    primary key (FK_idClient, FK_idReit)
);

create table toRentStock (
    idToRentStock number primary key,
    FK_idStock number,
    FK_idClient number,
    date date,
    quantity number,
    fee number,
    isActive boolean,
    foreign key (FK_idStock) references stock(idStock),
    foreign key (FK_idClient) references client(idClient)
);

create table rentedStock (
    idRentedStock number primary key,
    FK_idStock number,
    FK_idClient number,
    dateStart date,
    dateEnd date,
    quantity number,
    fee number,
    isActive boolean,
    foreign key (FK_idStock) references stock(idStock),
    foreign key (FK_idClient) references client(idClient)
);

create table toRentReit (
    idToRentReit number primary key,
    FK_idReit number,
    FK_idClient number,
    date date,
    quantity number,
    fee number,
    isActive boolean,
    foreign key (FK_idReit) references reit(idReit),
    foreign key (FK_idClient) references client(idClient)
);

create table rentedReit (
    idRentedReit number primary key,
    FK_idReit number,
    FK_idClient number,
    dateStart date,
    dateEnd date,
    quantity number,
    fee number,
    isActive boolean,
    foreign key (FK_idReit) references reit(idReit),
    foreign key (FK_idClient) references client(idClient)
);