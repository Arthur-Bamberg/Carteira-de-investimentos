select 
    case
        when reit.idReit is not null
            then 'REIT'
            else 'STOCK'    
    end as typeAsset, 
    nvl(reit.code, stock.code) as code,    
    nvl(reit.name, stock.name) as name,
    nvl(reit.section, stock.section) as section,
    nvl(reit.subsection, stock.subsection) as subsection,
    nvl(reit.mainIndex, stock.mainIndex) as mainIndex
from 
    client
    left join clientReit on clientReit.FK_idClient = client.idClient 
    left join reit on reit.idReit = clientReit.FK_idReit
    left join clientStock on clientStock.FK_idClient = client.idClient
    left join stock on stock.idStock = clientStock.FK_idStock
where client.idClient = 1;--ID do cliente
