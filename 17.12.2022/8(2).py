import random
a = []
n = int(input('n = '))
for i in range(n):
	# a.append(int(input())) # console input
	a.append(random.randint(1, 100))
print('a =', a)
max_first = a[0]
for i in a:
	if max_first < i:
		max_first = i
max_second = max_first
for i in a:
	if max_second == max_first:
		max_second = i
	elif i > max_second and i != max_first:
		max_second = i
print('max_first =', max_first)
if max_second == max_first:
	print("Second max not found")
else:
	print('max_second =', max_second)