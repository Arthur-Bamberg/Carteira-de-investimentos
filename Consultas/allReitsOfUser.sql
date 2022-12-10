select 
    reit.idReit,
    reit.code, 
    reit.name, 
    reit.section, 
    reit.subsection, 
    reit.mainIndex,
    clientReit.objective,
    clientReit.risk,
    clientReit.fundamentals,
    clientReit.strategy,
    clientReit.caution,
    clientReit.quantity
from reit
inner join clientReit on reit.idReit = clientReit.FK_idReit
where clientReit.FK_idClient = 1;--ID do cliente