create table client (
    idClient number primary key,
    name varchar2(50) not null,
    email varchar2(50) not null,
    password varchar2(50) not null
);

create table reit (
    idReit number primary key,
    code varchar2(6) not null,
    name varchar2(50),
    section varchar2(20),
    subsection varchar2(20),
    mainIndex varchar2(5)
);

create table stock (
    idStock number primary key,
    code varchar2(6) not null,
    name varchar2(50),
    section varchar2(20),
    subsection varchar2(20),
    mainIndex varchar2(5)
);

create table clientReit (
    FK_idClient number,
    FK_idReit number,
    quantity number,
    objective varchar2(100),
    risk varchar2(20),
    fundamentals varchar2(100),
    strategy varchar2(100),
    caution varchar2(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idReit) references reit(idReit),
    primary key (FK_idClient, FK_idReit)
);

create table clientStock (
    FK_idClient number,
    FK_idStock number,
    quantity number,
    objective varchar2(100),
    risk varchar2(20),
    fundamentals varchar2(100),
    strategy varchar2(100),
    caution varchar2(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idStock) references Stock(idStock),
    primary key (FK_idClient, FK_idStock)
);

create table reitAcquisition (
    idReitAcquisition number primary key,
    FK_idReit number,
    FK_idClient number,
    aDate date,
    quantity number,
    price number,
    foreign key (FK_idReit) references reit(idReit),
    foreign key (FK_idClient) references client(idClient)
);

create table stockAcquisition (
    idStockAcquisition number primary key,
    FK_idStock number,
    FK_idClient number,
    aDate date,
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
    reason varchar2(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idReit) references reit(idReit),
    primary key (FK_idClient, FK_idReit)
);

create table keepAnEyeOnStock (
    FK_idClient number,
    FK_idStock number,
    lastDaySeen date,
    price number,
    fairPrice number,
    reason varchar2(100),
    foreign key (FK_idClient) references client(idClient),
    foreign key (FK_idStock) references stock(idStock),
    primary key (FK_idClient, FK_idStock)
);

create table toRentStock (
    idToRentStock number primary key,
    FK_idStock number,
    FK_idClient number,
    aDate date,
    quantity number,
    fee number,
    isActive number,
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
    isActive number,
    foreign key (FK_idStock) references stock(idStock),
    foreign key (FK_idClient) references client(idClient)
);

create table toRentReit (
    idToRentReit number primary key,
    FK_idReit number,
    FK_idClient number,
    aDate date,
    quantity number,
    fee number,
    isActive number,
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
    isActive number,
    foreign key (FK_idReit) references reit(idReit),
    foreign key (FK_idClient) references client(idClient)
);