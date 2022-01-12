select assay_component.assay_component_name, assay_component.technological_target_type_sub, chemical.chnm, chemical.casn, sample.stkc, sample.stkc_unit, mc0.apid, mc0.rowi, mc0.coli, mc0.wllt, mc0.wllq, mc0.conc, mc0.rval
from mc0
JOIN sample ON mc0.spid = sample.spid
JOIN chemical ON sample.chid = chemical.chid
JOIN chemicals_silent_spring_identified on chemicals_silent_spring_identified.chemical_name = chemical.chnm
JOIN assay_component on assay_component.acid = mc0.acid
AND mc0.acid = 594  
ORDER BY chnm, conc;
