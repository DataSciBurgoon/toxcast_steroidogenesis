select assay_component.assay_component_name, assay_component.technological_target_type_sub, chemical.chnm, mc0.conc, count(*)
from mc0 
JOIN sample ON mc0.spid = sample.spid 
JOIN chemical ON sample.chid = chemical.chid 
JOIN chemicals_silent_spring_identified_p4 on chemicals_silent_spring_identified_p4.chemical_name = chemical.chnm 
JOIN assay_component on assay_component.acid = mc0.acid 
WHERE mc0.acid = 597
GROUP BY assay_component.assay_component_name, assay_component.technological_target_type_sub, chnm, mc0.conc 
ORDER BY chnm, conc;
