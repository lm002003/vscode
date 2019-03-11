# -*- encoding: utf-8 -*-
'''
@File    :   test.py
@Time    :   2019/03/06 10:22:09
@Author  :   John Ederson 
@Version :   1.0
@Contact :   lm002003@163.com
@License :   (C)Copyright 2018-2019, Liugroup-NLPR-CASIA
@Desc    :   None
'''

import os
import sys

print(os.getcwd())

# os.chdir("pytest")  # （表示当前目录时，也可以去掉“./”，直接写文件名或者下级目录）---【中文注释需要在文件`首行`注明编码】
# print(os.getcwd())
# fi = open("demo.py")  # 单引号或双引号【print函数、块注释中单双引号都可以】
# fl = open("d:\shiyan.py")
fl = open("pytest\demo.py")
# help(io.TextIOWrapper)
# print(dir(__builtins__))
# print("this is my first program")
# while True:
#     line = fl.readline()
#     n= 1
#     print("------------",n+1)
#     print(line)
n = 1
b = []
while True:
    # print("================>第", n, "次")
    n = n + 1
    line = fl.readline()
    if not line:
        break
    # b.append(line)
    print(line, "")
fl.close()
# print(b)
