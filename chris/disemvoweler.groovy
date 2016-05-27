List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', 'i']

String input = new File('../results/wap.txt').getText()
StringBuilder output = new StringBuilder()
StringBuilder vow = new StringBuilder()

for(char c : input.toCharArray()){
	if(c == ' ') {}
	else if(vowels.contains(c)) vow.append(c)
	else output.append(c)
}

println output
println vow
