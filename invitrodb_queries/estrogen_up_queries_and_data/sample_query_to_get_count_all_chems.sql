select count(distinct(chemical.chnm))
from mc0
JOIN sample ON mc0.spid = sample.spid
JOIN chemical ON sample.chid = chemical.chid
JOIN chemicals_silent_spring_identified on chemicals_silent_spring_identified.casn = chemical.casn
JOIN assay_component on assay_component.acid = mc0.acid
AND mc0.acid = 586  
ORDER BY chnm, conc;