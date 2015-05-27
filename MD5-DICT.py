from hashlib import md5
# by TheZakMan
# Exemplo de md5: 21232f297a57a5a743894a0e4a801fc3 (admin)
# dict: /usr/share/wordlists/rockyou.txt

print "[Md5 Dict-Cracker]"
print "|  wordlist.txt  |\n"
crackme = raw_input("MD5:")

# Carrega o dict rockyou no local default do kali
#f = open('wordlist.txt', 'r')
f = open('/usr/share/wordlists/rockyou.txt', 'r')

#Quebra linha por linha
words = [line[0:-1] for line in f.readlines()]

#[debug]
#print words

# Compara cada valor
for word in words:
	if md5(word).hexdigest() == crackme:
		print "\nCracked:", word
		break

if md5(word).hexdigest() != crackme:
    print "\n[*] Not Found!"
