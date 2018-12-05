library
(seqinr)
file<-read.fasta(file.choose())
class(file)
seq<-file[[1]]
GC(seq())

####################################################
#Blast portion 
#blast(X, program = "blastn", database = "nr", entrezquery = "none", nb = 5, oot = 35)

rna_strand<-reverseComplement(DNAString("ATCG-AA"))
#blast(rna_strand, program = "blastn", database = "nr", entrezquery = "none", nb = 5, oot = 35)
