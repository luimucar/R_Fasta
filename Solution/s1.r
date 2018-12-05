#http://bioconductor.org/packages/release/bioc/html/Biostrings.html

#Installed in windows. needed to run the CMD for R as Administrator. If not, the installation will fail.

#if (!requireNamespace("BiocManager", quietly = TRUE))
#    install.packages("BiocManager")
#BiocManager::install("Biostrings", version = "3.8")

#BiocManager::install()

library(BiocManager)
library(Biostrings)

#Be careful with the editor comparison, if you search for a string in VSCode it wont find those matches
#that share two lines in the editor
#Read the file (same folder as this R script)
#Becareful the fasta file has to be in the proper format: including first line with description stating with >
s <- readDNAStringSet("BamA.fasta")

#mAT <- vmatchPattern("AT", s, max.mismatch=0, min.mismatch=0,with.indels=FALSE, fixed=TRUE,algorithm="auto")
#mGC <- vmatchPattern("GC", s, max.mismatch=0, min.mismatch=0,with.indels=FALSE, fixed=TRUE,algorithm="auto")
#nmatch_per_seq_AT <- elementNROWS(mAT) # Get the number of matches per subject element.
#nat <- sum(nmatch_per_seq_AT) # Total number of matches.
#table(nmatch_per_seq_AT)
#nmatch_per_seq_GC <- elementNROWS(mGC) # Get the number of matches per subject element.
#ngc <- sum(nmatch_per_seq_GC) # Total number of matches.
#table(nmatch_per_seq_GC)
#r <- ngc /nat
#cat ("GC:AC ratio=",r,'\n')


a <- vmatchPattern("A", s, max.mismatch=0, min.mismatch=0,with.indels=FALSE, fixed=TRUE,algorithm="auto")
t <- vmatchPattern("T", s, max.mismatch=0, min.mismatch=0,with.indels=FALSE, fixed=TRUE,algorithm="auto")
g <- vmatchPattern("G", s, max.mismatch=0, min.mismatch=0,with.indels=FALSE, fixed=TRUE,algorithm="auto")
c <- vmatchPattern("C", s, max.mismatch=0, min.mismatch=0,with.indels=FALSE, fixed=TRUE,algorithm="auto")

anm <- elementNROWS(a);
tnm <- elementNROWS(t);
gnm <- elementNROWS(g);
cnm <- elementNROWS(c);

n_anm <- sum(anm);
n_tnm <- sum(tnm);
n_gnm <- sum(gnm);
n_cnm <- sum(cnm);

ratio_gc <- (n_gnm + n_cnm)/(n_anm + n_tnm + n_gnm + n_cnm)
ratio_at <- (n_anm + n_tnm)/(n_anm + n_tnm + n_gnm + n_cnm)

cat ("#g + #c / total =",ratio_gc,'\n')
cat ("#a + #t / total =",ratio_at,'\n')
