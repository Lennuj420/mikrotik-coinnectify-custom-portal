/system scheduler
add comment="Monitor Profile RATE1" interval=2m5s name=RATE1 on-event=":local \
    dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\"\
    jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :pic\
    k \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 ];\
    :local monthint ([ :find \$montharray \$month]);:local month (\$monthint +\
    \_1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\"\
    \$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$da\
    ys\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local minu\
    tes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local date\
    \_[ /system clock get date ]; :local time [ /system clock get time ]; :loc\
    al today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :for\
    each i in [ /ip hotspot user find where profile=\"RATE1\" ] do={ :local co\
    mment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user \
    get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comment\
    \_3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d=\
    \$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today \
    and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or (\
    \$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile RATE2" interval=2m10s name=RATE2 on-event=":local\
    \_dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"RATE2\" ] do={ :local c\
    omment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user\
    \_get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile RATE3" interval=2m15s name=RATE3 on-event=":local\
    \_dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"RATE3\" ] do={ :local c\
    omment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user\
    \_get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile RATE4" interval=2m20s name=RATE4 on-event=":local\
    \_dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"RATE4\" ] do={ :local c\
    omment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user\
    \_get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile RATE5" interval=2m25s name=RATE5 on-event=":local\
    \_dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"RATE5\" ] do={ :local c\
    omment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user\
    \_get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile RATE6" interval=2m30s name=RATE6 on-event=":local\
    \_dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"RATE6\" ] do={ :local c\
    omment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user\
    \_get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile RATE7" interval=2m35s name=RATE7 on-event=":local\
    \_dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"RATE7\" ] do={ :local c\
    omment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot user\
    \_get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile Member" interval=2m40s name=Member on-event=":loc\
    al dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\"\
    ,\"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :\
    pick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11\
    \_];:local monthint ([ :find \$montharray \$month]);:local month (\$monthi\
    nt + 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"Member\" ] do={ :local \
    comment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot use\
    r get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$comme\
    nt 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint d\
    =\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$today\
    \_and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) or \
    (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remove \
    \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
add comment="Monitor Profile default" interval=2m name=default on-event=":loca\
    l dateint do={:local montharray ( \"jan\",\"feb\",\"mar\",\"apr\",\"may\",\
    \"jun\",\"jul\",\"aug\",\"sep\",\"oct\",\"nov\",\"dec\" );:local days [ :p\
    ick \$d 4 6 ];:local month [ :pick \$d 0 3 ];:local year [ :pick \$d 7 11 \
    ];:local monthint ([ :find \$montharray \$month]);:local month (\$monthint\
    \_+ 1);:if ( [len \$month] = 1) do={:local zero (\"0\");:return [:tonum (\
    \"\$year\$zero\$month\$days\")];} else={:return [:tonum (\"\$year\$month\$\
    days\")];}}; :local timeint do={ :local hours [ :pick \$t 0 2 ]; :local mi\
    nutes [ :pick \$t 3 5 ]; :return (\$hours * 60 + \$minutes) ; }; :local da\
    te [ /system clock get date ]; :local time [ /system clock get time ]; :lo\
    cal today [\$dateint d=\$date] ; :local curtime [\$timeint t=\$time] ; :fo\
    reach i in [ /ip hotspot user find where profile=\"default\" ] do={ :local\
    \_comment [ /ip hotspot user get \$i comment]; :local name [ /ip hotspot u\
    ser get \$i name]; :local gettime [:pic \$comment 12 20]; :if ([:pic \$com\
    ment 3] = \"/\" and [:pic \$comment 6] = \"/\") do={:local expd [\$dateint\
    \_d=\$comment] ; :local expt [\$timeint t=\$gettime] ; :if ((\$expd < \$to\
    day and \$expt < \$curtime) or (\$expd < \$today and \$expt > \$curtime) o\
    r (\$expd = \$today and \$expt < \$curtime)) do={ [ /ip hotspot user remov\
    e \$i ]; [ /ip hotspot active remove [find where user=\$name] ];}}}" \
    policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
