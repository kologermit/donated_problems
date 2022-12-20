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
	for i in a:
		file.write(str(i * 5))
		file.write(" рублей\n")