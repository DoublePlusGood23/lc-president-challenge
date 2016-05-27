vowel = 'aieouAIEOU'

phrase = input()

output = ''
vowels = ''

# Remove sapces
phrase = phrase.replace(' ', '')

for char in phrase:
    if char in vowel:
        vowels += char  # Add vowels to vowels

print(phrase.strip(vowel))
print(vowels)
