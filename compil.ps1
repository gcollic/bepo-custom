mkdir output/amd64
mkdir output/i386
mkdir output/ia64
mkdir output/sources
mkdir output/wow64

copy bepo.klc output/sources/mybepo.klc

kbdutool.exe -u -s bepo.klc
mv mybepo.* output/sources/

kbdutool.exe -u -x bepo.klc
mv mybepo.dll output/i386/

kbdutool.exe -u -i bepo.klc
mv mybepo.dll output/ia64/

kbdutool.exe -u -m bepo.klc
mv mybepo.dll output/amd64/

kbdutool.exe -u -o bepo.klc
mv mybepo.dll output/wow64/

PAUSE
