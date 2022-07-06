VERSION ?= 2020.1
XSCT=$(PETALINUX)/tools/xsct/bin/xsct
# ou $(VIVADO)/Vitis/$(VERSION)/bin/xsct
	
dts:
	$(RM) -r my_dts
	$(XSCT) -eval "source build_dts.tcl; build_dts $(XSA_FILE)"

include_dtsi:
	$(XSCT) -eval "source build_dts.tcl; include_dtsi $(DTSI_FILE)"
	
compile:
	$(RM) -r my_dts/system-top.dtb
	gcc -I my_dts -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp -o my_dts/system-top.dts.tmp my_dts/system-top.dts
	dtc -I dts -O dtb -o my_dts/system-top.dtb my_dts/system-top.dts.tmp
	
clean:
	$(RM) -r .Xil my_dts *.bit *.mmi *.c *.h psu_init.tcl ps7_init.tcl *.html
