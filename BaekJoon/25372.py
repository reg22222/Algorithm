rep = int(input())
for i in range(rep):
    c = input()
    if len(c) >= 6 and len(c) <= 9 and c.isalnum() == True:
        print("yes")
    else:
        print("no")