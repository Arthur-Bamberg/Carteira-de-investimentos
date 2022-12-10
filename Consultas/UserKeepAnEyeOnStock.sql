select
    stock.name,
    stock.code,
    keepAnEyeOnStock.lastDaySeen,
    keepAnEyeOnStock.price,
    keepAnEyeOnStock.fairPrice,
    keepAnEyeOnStock.reason
from keepAnEyeOnStock
inner join stock on stock.idStock = keepAnEyeOnStock.FK_idStock
where keepAnEyeOnStock.FK_idClient = 1--ID do cliente