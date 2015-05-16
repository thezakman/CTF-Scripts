from hashlib import md5
# by TheZakMan
# Exemplo de md5: 21232f297a57a5a743894a0e4a801fc3 (admin)
# dict: /usr/share/wordlists/rockyou.txt

print "[Md5 Dict-Cracker]"
print "|  wordlist.txt  |\n"
crackme = raw_input("MD5:")

#f = open('wordlist.txt', 'r')
f = open('/usr/share/wordlists/rockyou.txt', 'r')

words = [line[0:-1] for line in f.readlines()]


#words = 'test', 'alex', 'steve', 'admin'
#print words


for word in words:
	if md5(word).hexdigest() == crackme:
		print "\nCracked:", word
		break

if md5(word).hexdigest() != crackme:
    print "\n[*] Not Found!"
