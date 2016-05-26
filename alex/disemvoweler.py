not_vowel = 'bcdfghjklmnpqrtvwxyzBCDFGHJKLMNPQRTVWXYZ'

phrase = input()

output = ''
vowels = ''

# Remove sapces
phrase = phrase.replace(' ', '')

for char in phrase:
    if char in not_vowel:
        output += char  # Add non vowel to output
    else:
        vowels += char  # Add vowels to vowels

print(output)
print(vowels)
