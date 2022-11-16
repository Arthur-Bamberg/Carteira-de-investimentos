select
    rentedReit.idRentedReit,
    reit.name,
    reit.code,
    rentedReit.dateStart,
    rentedReit.dateEnd,
    rentedReit.quantity,
    rentedReit.fee,
    rentedReit.isActive
from rentedReit
inner join reit on reit.idReit = rentedReit.FK_idReit
where rentedReit.FK_idClient = 1--ID do cliente