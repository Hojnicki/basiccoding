### EXAMPLE 5.1 from Practical Management Science ###

# Import lpSolve package
library(lpSolve)

# Set transportation costs matrix
costs <- matrix(c(131,218,266,120,250,116,263,278,178,132,122,180), nrow = 3, byrow = TRUE)
costs
# Set region and suppliers' names
colnames(costs) <- c("Region 1", "Region 2", "Region 3", "Region 4")
rownames(costs) <- c("Plant 1", "Plant 2","Plant 3")

# Set unequality/equality signs for suppliers
row.signs <- rep("<=", 3)

# Set right hand side coefficients for suppliers (capacity)
row.rhs <- c(450,600,500)

# Set unequality/equality signs for customers
col.signs <- rep(">=", 4)

# Set right hand side coefficients for customers (demand)
col.rhs <- c(450,200,300,300)

# Final value (z)
lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)

# Variables final values
lp.transport(costs,"min", row.signs, row.rhs, col.signs, col.rhs)$solution
