# Load libraries
library(GEOquery)
library(limma)
library(ggplot2)
library(pheatmap)

# Load GEO dataset
gset <- getGEO("GSE42872", GSEMatrix = TRUE)[[1]]

# Expression data
expr <- exprs(gset)
group <- factor(c(rep("Control", 3), rep("Disease", 3)))  # Adjust to dataset

# Design matrix
design <- model.matrix(~group)
fit <- lmFit(expr, design)
fit <- eBayes(fit)
results <- topTable(fit, coef=2, adjust="fdr", number=Inf)

# Save results
dir.create("../results",showWarnings = FALSE)
write.csv(results, file = "../results/DEG_results.csv")

# Volcano plot
results$significant <- results$adj.P.Val < 0.05
ggplot(results,aes(x=logFC,y=-log10(P.Value),colour = significant))+geom_point()+
  theme_minimal()+ggtitle("volcano plot")



# Heatmap of top 50 DEGs
topgenes <- head(rownames(results), 50)
pheatmap(expr[topgenes, ], scale="row", main="Top 50 DEGs Heatmap")
