# write sth
a = 100
if a >= 0:
	print a
else:
	print -a

# zhuan yi zifu 
print 'I\'m OK'
print 'I\'m Yikun, I am learning \n Python'
print '\\\n\\'

print r'''\\\\line1
line2
line3'''

print not True
print 2>3
print None

# So when b point to a, and find a point to 'abc', b will automatically point to abc, not variable a
# To be simple, variable is pointing to value, not another variable
a = 'abc'
b = a
a = 'xyz'
print b

print 10/3
print 10/3.0
print 10%3

