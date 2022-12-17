file = open("8(1)_file.txt", "r", encoding="utf-8")
text = file.read().replace("\t", " ").replace("\n", " ")
file.close()
words = text.split(" ")
for i in range(len(words)):
	for j in range(len(words) - 1):
		if words[j + 1].upper() < words[j].upper():
			words[j + 1], words[j] = words[j], words[j + 1]
def is_rus_word(word):
	alphabet = "ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮЁ"
	for i in word:
		if i.upper() not in alphabet:
			return False
	return bool(word)
words = [i for i in words if is_rus_word(i)]
print(words)