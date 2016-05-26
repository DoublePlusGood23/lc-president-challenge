not_vowel = 'bcdfghjklmnpqrtvwxyzBCDFGHJKLMNPQRTVWXYZ'
output = ''

phrase = input()

for char in phrase:
    if char in not_vowel:
        # Assumes there is no capital letters inside of the word
        output += char + 'o' + char.lower()
    else:
        output += char

print(output)
