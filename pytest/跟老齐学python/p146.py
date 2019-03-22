
#!/usr/bin/env python
# -*- encoding: utf-8 -*-
'''
@File    :   p146.py
@Time    :   2019/03/20 08:49:47
@Author  :   John Ederson 
@Version :   1.0
@Contact :   lm002003@163.com
@License :   (C)Copyright 2018-2019, Liugroup-NLPR-CASIA
@Desc    :   None
'''

# # here put the import lib
# def fibs(n):
#     result = [0,1]
#     for i in range(n-2):
#         result.append(result[-2]+result[-1])
#     return result

# if __name__ == "__main__":
#     lst = fibs(10)
#     print lst
# numbers = range(10)
# lam = lambda x:x+3
# n2 = []
# for i in numbers:
#     n2.append(lam(i))

# print n2
print "---------------------------------"

__metaclass__=type

class Person:
    def __init__(self,name):
        self.name = name

    def getName(self):
        return self.name

    def color(self,color):
        print "%s is %s" % (self.name, color)
