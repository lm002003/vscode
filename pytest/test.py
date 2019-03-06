
#!/usr/bin/env python
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
import sys
# here put the import lib
# print("python:",sys.version)
# print("hello python")
# print('hello c++')
a_dict = {'Name': 'Zara', 'Age': 7, 'Class': 'First'}

raw="Do you love Canglaoshi? Canglaoshi is a good teacher."
raw_list=raw.split(" ")

squares=[x**2 for x in range(1,10)]
print(list(enumerate(raw_list)))
print(squares)