select
    reit.name,
    reit.code,
    keepAnEyeOnReit.lastDaySeen,
    keepAnEyeOnReit.price,
    keepAnEyeOnReit.fairPrice,
    keepAnEyeOnReit.reason
from keepAnEyeOnReit
inner join reit on reit.idReit = keepAnEyeOnReit.FK_idReit
where keepAnEyeOnReit.FK_idClient = 1--ID do cliente