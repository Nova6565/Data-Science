#Q1
s = input("Enter a string: ")
c = 0
for i in s:
    if i == 'a' or i =='e' or i == 'i' or i == 'o' or i == 'u':
        c += 1
print(c)

#q2
arr = [1,4,2,5,3,6,4,7,5,8]
max = arr[0]

for i in arr:
    if i > max:
        max = i
print(max)