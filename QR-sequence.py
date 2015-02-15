#!/usr/bin/python

# Script to read QR-Codes files in sequence
#                      14 fevereiro de 2015
#              https://github.com/thezakman


from qrtools import QR

flag = []

i = 48
for x in xrange(9):
    i += 1  

    FILE = QR(filename="QR"+chr(i)+".png") # PNG Sequence
    
    if FILE.decode(): 
        resultado = FILE.data_to_string()    
        flag.append(resultado)
        
    
print ' '.join(flag) # Space in between words (remove the space in case you don't need it.)

 
