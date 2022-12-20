def sum(distance, rate, stop=0):
	if rate == "weekday":
		return 300 + distance // 500 * 20 + stop * 50
	if rate == "weekend":
		return 400 + distance // 500 * 25 + stop * 70

print(sum(1000, "weekday", 3))