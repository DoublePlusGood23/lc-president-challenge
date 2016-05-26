List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', 'i']

String input = System.console().readLine('Enter the thing: ')
String output = ''

for(String c : input){
	if(!vowels.contains(c)){
		output += '' + c + 'o' + Character.toLowerCase(c.charAt(0))
	} else {
		output += c
	}
}

println output
