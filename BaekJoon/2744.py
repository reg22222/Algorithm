s = input()
for i in s:
    if i.isupper() == True:
        print(i.lower(),end='')
    elif i.isupper() == False:
        print(i.upper(),end='')

