# K-Means Cluster Analysis
fit <- kmeans(x = golub, 8)
fit$cluster  # get cluster assignment
fit$centers  # get cluster center
# get cluster means
aggregate(golub, by = list(fit$cluster), FUN = mean)

require(cluster)
fit <- pam(x = golub, k = 8)

fit$clustering  # get cluster assignment
fit$medoids  # get coordinates of each medoid
# summary method
summary(fit)




