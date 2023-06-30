syms q1 q2 Px Py
equation = [Px == -255*(sin(q1+q2)+sin(q1)), Py ==225*(cos(q1)+(cos(q2+q1)))]
variable = [q1 q2]
solution = solve(equation,variable)
q1 = simplify(solution.q1)
q2 = simplify(solution.q2)
