module LP

using JuMP
using Cbc

lpModel = Model(solver = CbcSolver(seconds = 3600))

@variable(lpModel, a >= 0)
@variable(lpModel, b >= 0)
@variable(lpModel, c >= 0)
@variable(lpModel, d >= 0)
@constraint(lpModel, 46a+40b+45c+40d == 43)
@constraint(lpModel, 33a+20b+28c+18d >= 25)
@constraint(lpModel, 10a+5b+12c+2d <= 8)
@objective(lpModel, Min, 12a + 8b + 11c + 7d)

status = JuMP.solve(lpModel)

result = getvalue(a), getvalue(b), getvalue(c), getvalue(d)

export status
export result

end
