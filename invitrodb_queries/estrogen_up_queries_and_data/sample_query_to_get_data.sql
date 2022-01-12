select chemical.chnm, chemical.casn, sample.stkc, sample.stkc_unit, mc0.apid, mc0.rowi, mc0.coli, mc0.wllt, mc0.wllq, mc0.conc, mc0.rval
from mc0  
JOIN sample ON mc0.spid = sample.spid  
JOIN chemical ON sample.chid = chemical.chid  
WHERE chemical.chnm = "Hexythiazox"
AND mc0.acid = 587
LIMIT 0, 1000