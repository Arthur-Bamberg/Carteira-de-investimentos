select 
    stock.idStock,
    stock.code, 
    stock.name, 
    stock.section, 
    stock.subsection, 
    stock.mainIndex,
    clientStock.objective,
    clientStock.risk,
    clientStock.fundamentals,
    clientStock.strategy,
    clientStock.caution,
    clientStock.quantity
from stock
inner join clientStock on stock.idStock = clientStock.FK_idStock
where clientStock.FK_idClient = 1;--ID do cliente