# Ward Hierarchical Clustering
d <- dist(golub, method = "euclidean")  # distance matrix
fit <- hclust(d, method = "ward.D")

plot(fit)
groups <- cutree(fit, k = 8)  # cut tree into 5 clusters
# draw dendogram with red borders around the 5 clusters
rect.hclust(fit, k = 8, border = "red")
