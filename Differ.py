
file1 = raw_input('[file1:] ')
modified = open(file1,"r").readlines()[0]

file2 = raw_input('[file2:] ')
pi = open(file2, "r").readlines()[0] # [:len(modified)]

resultado = "".join( x for x,y in zip(modified, pi) if x != y)
resultado2 = "".join( x for x,y in zip(pi, modified) if x != y)

print "[Differ:]
print '\n-------------------------------------'
print "[file1] -> [file2]", resultado
print '-------------------------------------'
print "[file2] -> [file1]", resultado2
