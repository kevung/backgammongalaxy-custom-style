SRC=postmanpat_sober_match.css \
	 postmanpat_sober_analyse.css 
TRG=postmanpat_sober.css

${TRG}: ${SRC}
	make patch
	cat ${SRC} > ${TRG}

patch: 
	patch postmanpat_sober_analyse.css <  patch_remove_progid_line

clean:
	rm -f ${TRG}

.PHONY: main clean patch
