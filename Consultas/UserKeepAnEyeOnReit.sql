select
    lastDaySeen date,
    price number,
    fairPrice number,
    reason varchar2(100)
from clientReit
inner join reit on reit.idReit = clientReit.FK_idReit
where clientReit.FK_idClient = 1--ID do cliente