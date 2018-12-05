#http://bioconductor.org/packages/release/bioc/html/Biostrings.html

library(seqinr)
library(Biostrings)
file<-read.fasta(file.choose())
class(file)
seq<-file[[1]]
#http://127.0.0.1:11928/library/seqinr/html/GC.html
#Get the help of this function by typing ?GC
GC(seq)

####################################################
#Blast portion 
#blast(X, program = "blastn", database = "nr", entrezquery = "none", nb = 5, oot = 35)

rna_strand<-reverseComplement(DNAString("ATCG-AA"))
#blast(rna_strand, program = "blastn", database = "nr", entrezquery = "none", nb = 5, oot = 35)
