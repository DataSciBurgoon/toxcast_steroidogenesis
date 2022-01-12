select *
from chemical
RIGHT OUTER JOIN chemicals_silent_spring_identified on chemicals_silent_spring_identified.chemical_name = chemical.chnm
order by chemical.chnm;