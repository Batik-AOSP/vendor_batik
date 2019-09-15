BATIK_TARGET_PACKAGE := $(PRODUCT_OUT)/Batik-$(BATIK_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: batik bacon
batik: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(BATIK_TARGET_PACKAGE)
	$(hide) $(SHA256) $(BATIK_TARGET_PACKAGE) | cut -d ' ' -f1 > $(BATIK_TARGET_PACKAGE).sha256sum
	$(hide) rm -rf $(call intermediates-dir-for,PACKAGING,target_files)
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Batik ${txtrst}";
	echo -e ""
	echo -e ${CL_GOLD}"██████╗  █████╗ ████████╗██╗██╗  ██╗      ██████╗ ███████╗"${CL_GOLD}
	echo -e ${CL_GOLD}"██╔══██╗██╔══██╗╚══██╔══╝██║██║ ██╔╝     ██╔═══██╗██╔════╝"${CL_GOLD}
	echo -e ${CL_GOLD}"██████╔╝███████║   ██║   ██║█████╔╝█████╗██║   ██║███████╗"${CL_GOLD}
	echo -e ${CL_GOLD}"██╔══██╗██╔══██║   ██║   ██║██╔═██╗╚════╝██║   ██║╚════██║"${CL_GOLD}
	echo -e ${CL_GOLD}"██████╔╝██║  ██║   ██║   ██║██║  ██╗     ╚██████╔╝███████║"${CL_GOLD}
	echo -e ${CL_GOLD}"╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝      ╚═════╝ ╚══════╝"${CL_GOLD}                                                        
	echo -e ""
	@echo -e "zip: "$(BATIK_TARGET_PACKAGE)
	@echo -e "sha256: `cat $(BATIK_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(BATIK_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

bacon: batik
