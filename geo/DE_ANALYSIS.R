library(DESeq2)
library(DEFormats)
counts <- read.delim("/Users/rishav_raj/Desktop/bioinformatics/geo/GSE_raw.tsv", sep = "\t", header = TRUE)
rownames(counts)<-counts[,1]
counts<-counts[,-1]
counts

group = rep(c("A", "B"), each = 15)
group = c(group,"B")
dge = DGEList(counts,group=group)
dds = as.DESeqDataSet(dge)
dds
dds <- DESeq(dds)
res <- results(dds)
res
head(results(dds, tidy=TRUE))
summary(res)

resOrdered <- res[order(res$padj),]
head(resOrdered)

sum(res$padj < 0.1, na.rm=TRUE)
plotMA(res, main="DESeq2", ylim=c(-2,2))
res.1 <- subset(resOrdered, padj < 0.1)
diffexpgenes <- sort(as.factor(rownames(res.1)))

par(mfrow=c(1,1))
with(res, plot(log2FoldChange, -log10(pvalue), pch=20, main="Volcano plot", xlim=c(-3,3)))
with(subset(res, padj<.01 ), points(log2FoldChange, -log10(pvalue), pch=20, col="blue"))
with(subset(res, padj<.01 & abs(log2FoldChange)>2), points(log2FoldChange, -log10(pvalue), pch=20, col="red"))

#plotting according to the paper
par(mfrow=c(1,1))
with(res, plot(log2FoldChange, -log10(pvalue), pch=20, main="Volcano plot", xlim=c(-3,3)))
with(subset(res, pvalue<0.05 ), points(log2FoldChange, -log10(pvalue), pch=20, col="blue"))
with(subset(res, abs(log2FoldChange)>1), points(log2FoldChange, -log10(pvalue), pch=20, col="red"))

#PCA
vsdata <- vst(dds, blind=FALSE)
plotPCA(vsdata) #using the DESEQ2 plotPCA fxn we can
