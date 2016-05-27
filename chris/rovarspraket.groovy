List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', 'i']

String input = new File('../results/wap.txt').getText()
StringBuilder output = new StringBuilder()

for(char c : input.toCharArray()){
	if(!vowels.contains(c as String)){
		output.append(c)
		output.append('o')
		output.append(Character.toLowerCase(c))
	} else {
		output.append(c)
	}
}

println output
