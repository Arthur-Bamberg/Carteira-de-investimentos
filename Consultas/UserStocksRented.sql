select
    rentedStock.idRentedStock,
    stock.name,
    stock.code,
    rentedStock.dateStart,
    rentedStock.dateEnd,
    rentedStock.quantity,
    rentedStock.fee,
    rentedStock.isActive
from rentedStock
inner join stock on stock.idStock = rentedStock.FK_idStock
where rentedStock.FK_idClient = 1--ID do cliente