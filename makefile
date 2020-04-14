SRC=postmanpat_sober_match.css \
	 postmanpat_sober_analyse.css 
TRG=postmanpat_sober.css

${TRG}: ${SRC}
	cat ${SRC} > ${TRG}

clean:
	rm -f ${TRG}

.PHONY: main clean
