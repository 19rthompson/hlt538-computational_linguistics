#HW6 template: palindrome.py
#Edited to handle calling without arguments smoothly
import sys
def palindrome(a):
    if len(a) <= 1:
        return True
    else:
        if a[0] == a[-1]:
            return palindrome(a[1:-1])
        else:
            return False

if (len(sys.argv)>1):
    print(palindrome(sys.argv[1]))
else:
    print("Usage: python3 palindrome.py <string to evaluate>")
