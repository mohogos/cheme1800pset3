include("Include.jl")

# Case 1
h = 0.1
κ = 1.0
Cₒ = 10.0

# setup my time array -
T_stop = 20.0
T_array = range(0.0, stop = T_stop, step=h) |> collect
N = 200
xₒ = zeros(N)

# Analytical soln -
X = Cₒ*exp.(-κ*T_array)

# Compute system model -
model = build(MyChemicalDecayModel, κ = κ, h = h, N = N, Cₒ = Cₒ)

# Solve -
jacobi_soln = solve(JacobiIterationSolver(), model, xₒ)
gs_soln = solve(GaussSeidelIterationSolver(), model, xₒ)

# add the ic -
XJ = [Cₒ ; jacobi_soln]
XGS = [Cₒ ; gs_soln]


# Case 2
h = 0.1
κ = 10.0
Cₒ = 10.0

# setup my time array -
T_stop = 20.0
T_array = range(0.0, stop = T_stop, step=h) |> collect
N = 200
xₒ = zeros(N)

# Analytical soln -
X = Cₒ*exp.(-κ*T_array)

# Compute system model -
model = build(MyChemicalDecayModel, κ = κ, h = h, N = N, Cₒ = Cₒ)

# Solve -
jacobi_soln = solve(JacobiIterationSolver(), model, xₒ)
gs_soln = solve(GaussSeidelIterationSolver(), model, xₒ)

# add the ic -
XJ = [Cₒ ; jacobi_soln]
XGS = [Cₒ ; gs_soln]


# Case 3
h = 0.1
κ = 100.0
Cₒ = 10.0

# setup my time array -
T_stop = 20.0
T_array = range(0.0, stop = T_stop, step=h) |> collect
N = 200
xₒ = zeros(N)

# Analytical soln -
X = Cₒ*exp.(-κ*T_array)

# Compute system model -
model = build(MyChemicalDecayModel, κ = κ, h = h, N = N, Cₒ = Cₒ)

# Solve -
jacobi_soln = solve(JacobiIterationSolver(), model, xₒ)
gs_soln = solve(GaussSeidelIterationSolver(), model, xₒ)

# add the ic -
XJ = [Cₒ ; jacobi_soln]
XGS = [Cₒ ; gs_soln]