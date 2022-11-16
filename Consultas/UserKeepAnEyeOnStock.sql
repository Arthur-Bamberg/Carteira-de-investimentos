select
    lastDaySeen date,
    price number,
    fairPrice number,
    reason varchar2(100)
from clientStock
inner join stock on stock.idStock = clientStock.FK_idStock
where clientStock.FK_idClient = 1--ID do cliente