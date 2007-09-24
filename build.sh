# build file to generate the various distribution binaries

make CFG=hamlib-static USE_TLS=0
tar czf fldigi.bin.tgz -C Install fldigi
rm Objects/fl_digi.o

make CFG=emcomm USE_TLS=0
tar czf fldigi.emc.bin.tgz -C Install fldigi

make clean

make CFG=nhl-static USE_TLS=0
tar czf fldigi.nhl.bin.tgz -C Install fldigi
rm Objects/fl_digi.o

make CFG=nhl-emcomm USE_TLS=0
tar czf fldigi.emc.nhl.bin.tgz -C Install fldigi

make clean
