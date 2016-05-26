letters = 'bcdfghjklmnpqrtvwxyzBCDFGHJKLMNPQRTVWXYZ'
output = ''

phrase = input()

for char in phrase:
    if char in letters:
        output += char + 'o' + char.lower()
    else:
        output += char

print(output)