letters = 'bcdfghjklmnpqrtvwxyzBCDFGHJKLMNPQRTVWXYZ'

phrase = input()
output = ''
vowels = ''

phrase = phrase.replace(' ', '')

for char in phrase:
    if char in letters:
        output += char
    else:
        vowels += char

print(output)
print(vowels)