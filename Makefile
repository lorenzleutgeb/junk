junk.sv: junk.txt junk-template.sv
	sed 's/^/\t"/; s/$$/"/; $$!s/$$/,/' junk.txt | sed '4r /dev/stdin' junk-template.sv > junk.sv
