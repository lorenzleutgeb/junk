require "fileinto";

# rule:[Junk]
if address :matches "from" [
] {
	fileinto "Junk";
	stop;
}
