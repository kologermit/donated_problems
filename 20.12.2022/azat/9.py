def monthly_deposit(start: float, target: float, pct: float):
    yield start
    while start <= target:
        start *= (pct / 100 + 1)
        print(start)
        yield start

d = monthly_deposit(10, 100, 10)
for i in d:
    print(i)