select 
    client.name,
    case
        when reit.idReit is not null
            then 'REIT'
            else 'STOCK'    
    end as typeAsset, 
    nvl(reit.code, stock.code) as code,    
    nvl(reit.name, stock.name) as nameAsset,
    nvl(reit.section, stock.section) as section,
    nvl(reit.subsection, stock.subsection) as subsection,
    nvl(reit.mainIndex, stock.mainIndex) as mainIndex
from 
    client
    left join keepAnEyeOnReit on keepAnEyeOnReit.FK_idClient = client.idClient 
    left join reit on reit.idReit = keepAnEyeOnReit.FK_idReit
    left join keepAnEyeOnStock on keepAnEyeOnStock.FK_idClient = client.idClient
    left join stock on stock.idStock = keepAnEyeOnStock.FK_idStock