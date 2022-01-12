select mc0.spid, mc0.apid, mc0.rowi, mc0.coli, mc0.wllt, mc0.wllq, mc0.conc, mc0.rval
from mc0  
WHERE mc0.spid = "DMSO"
AND mc0.acid = 594
LIMIT 0, 1000