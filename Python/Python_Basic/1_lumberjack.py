# Input your name, and if it is Joey, it will say:
# Joey is happy everyday!
# If it is not, it says:
# name wakes me up, and I play with name when september ends!

name = input("What is your name?")

if name == 'Joey':
	print (name + 'is happy everyday!')
else:
	print (name + ' wakes me up, and I play with ' + name + ' when september ends!')

# Skill: input, if else structure, print, concatinate string with '+''
# After finishing this, try to concatenate string without '+'!


name = input("What is your name?")

if name == 'Joey':
	print ('{} is happy everyday!'.format(name))
else:
	print ('{} wakes me up, and I play with {} when september ends!'.format(name, name))