rep = int(input())

a = list(input())
for i in range(rep-1):
    b = list(input())
    for j in range(len(a)):
        if a[j] == b[j]:
            continue
        else:
            a[j] = '?'

print(''.join(a))
