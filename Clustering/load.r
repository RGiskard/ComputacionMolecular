print("Proceso de carga de Datos")
require(golubEsets)
data(Golub_Merge)
golub <- data.frame(Golub_Merge)[1:7129]
# calculate variance and rearrange columns by variance decreasingly
golub.rearrange <- golub[, order(apply(golub, 2, var), decreasing = T)]
golub <- golub.rearrange[, 1:150]
print("Datos cargados y ordenados por la varianza")
print("Los datos se han almacenado en la variable golub")
