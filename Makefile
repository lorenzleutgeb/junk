junk.txt: junk.csv
	cut -f1 -d, junk.csv | \
		grep -oP '"(\K[^\"]*)' > junk.txt

junk.sv: junk.txt junk-template.sv
	sed 's/^/\t"/; s/$$/"/; $$!s/$$/,/' junk.txt | \
		sed '4r /dev/stdin' junk-template.sv > junk.sv
