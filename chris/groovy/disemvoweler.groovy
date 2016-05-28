List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U', 'i']

BufferedReader br = new BufferedReader(new InputStreamReader(System.in))
BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out))

char c
while((c = br.read()) >= 0) {
	if(c == ' ') {}
	else if(vowels.contains(c)) bw.write(c)
	else bw.write(c)
}
