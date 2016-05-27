List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', 'i']

String input = new File('../wap.txt').getText()
String output = ''
String vow = ''

for(String c : input){
	if(c == ' ') {}
	else if(vowels.contains(c)) vow += c
	else output += c
}

println output
println vow
