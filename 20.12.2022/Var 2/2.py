import os
if not os.path.exists("intfile"):
	print("File not found")
else:
	file = open("intfile", "r")
	a = []
	for line in file:
		a += list(map(int, line.split()))
	print('input numbers:', a)
	file.close()
	file = open("intfilenew", "w", encoding="utf-8")
	for i in range(len(a)):
		file.write(str(a[i] * 5))
		file.write(" рублей")
		if i + 1 != len(a):
			file.write("\n")