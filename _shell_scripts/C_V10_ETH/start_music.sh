
export GPU_MAX_ALLOC_PERCENT=100

./ethdcrminer64 -epool stratum+tcp://lb.geo.pirlpool.eu:8004 -ewal 0x441d1468744efe67217158cd754534ca950bb743 -epsw x -allpools 1 -eworker rx580home2 -mode 1 -tt 65,65,65,65,65,65,65,65,65,65,65,65 -fanmin 40,40,40,40,40,40,40,40,40,40,40,40 -tstop 85,85,85,85,85,85,85,85,85,85,85,85 -cclock 1150,1150,1150,1150,1150,1150,1150,1150,1150,1150,1150,1150 -mclock 2050,2050,2050,2050,2050,2050,2050,2050,2050,2050,2050,2050 -mvddc 875,875,875,875,875,875,875,875,875,875,875,875 -cvddc 850,850,850,850,850,850,850,850,850,850,850,850 
