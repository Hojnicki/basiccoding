library("lpSolve") #needed package

#Ingriedent Problem
# Set up problem: minimize
# 8A + 10B  = C subject to
# 1A + 2B >= 40
# 4A + 2B >= 60
# A >= 5
# B >= 5
# A >= 0
# B >= 0

objective <- c(8, 10) #coefficients of your objective function
LHSconstraints <- matrix (c(1, 2, 4, 2, 1, 0, 0, 1, 1, 0, 0, 1), nrow=6, byrow=TRUE) #coefficients of your constraints, change nrow to number of constraints
directions <- c(">=", ">=", ">=", ">=", ">=", ">=") #change as apprioriate
RHSconstraints <- c(40, 60, 5, 5, 0, 0)

answer <- lp ("min", objective, LHSconstraints, directions, RHSconstraints, all.int = TRUE) #all.int = requires integer value return
answer #display objective function solution
answer$solution #display variable values

#Problem 25a
# P1 = Process 1 P2 = Process 2
# min: 400P1 + 100P2 = C subject to
# 300P1 + 100P2 >= 1000
# 100P1 + 100P2 >= 500
# 100P1 >= 300
# P1 >= 0
# P2 >= 0

objective <- c(400, 100) #coefficients of your objective function
LHSconstraints <- matrix (c(300, 100, 100, 100, 100, 0, 1, 0, 0, 1), nrow=5, byrow=TRUE) #coefficients of your constraints, change nrow to number of constraints
directions <- c(">=", ">=", ">=", ">=", ">=", ">=") #change as apprioriate
RHSconstraints <- c(1000, 500, 300, 0, 0)

answer <- lp ("min", objective, LHSconstraints, directions, RHSconstraints, all.int = TRUE) #all.int = requires integer value return
answer #display objective function solution
answer$solution #display variable values

#Problem 26a
# C= Chairs D = Desks
# max: 400D + 250C = Profit subject to
# 4D + 3C <= 2000
# 2D -C <= 0
# D >= 0
# C >= 0

objective <- c(400, 250) #coefficients of your objective function
LHSconstraints <- matrix (c(4, 3, 2, -1, 1, 0, 0, 1), nrow=4, byrow=TRUE) #coefficients of your constraints, change nrow to number of constraints
directions <- c("<=", "<=", ">=", ">=") #change as apprioriate
RHSconstraints <- c(2000, 0, 0, 0)

answer <- lp ("max", objective, LHSconstraints, directions, RHSconstraints, all.int = TRUE) #all.int = requires integer value return
answer #display objective function solution
answer$solution #display variable values

#Problem 27a
# W = Wheat C = Corn
# max: 2000W + 3000C = Profit subject to
# 3W + 2C <= 1000
# 2W + 4C <= 1200
# W >= 0
# C >= 0

objective <- c(2000, 3000) #coefficients of your objective function
LHSconstraints <- matrix (c(3, 2, 2, 4, 1, 0, 0, 1), nrow=4, byrow=TRUE) #coefficients of your constraints, change nrow to number of constraints
directions <- c("<=", "<=", ">=", ">=") #change as apprioriate
RHSconstraints <- c(1000, 1200, 0, 0)

answer <- lp ("max", objective, LHSconstraints, directions, RHSconstraints, all.int = TRUE) #all.int = requires integer value return
answer #display objective function solution
answer$solution #display variable values


