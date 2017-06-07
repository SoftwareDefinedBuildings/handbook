import numpy as np

###########################
# Numpy Array Exploration #
###########################

# Reference List:
# 1. https://datax911.files.wordpress.com/2016/12/numpy-v1-12.pdf

print("Matrix")
a = np.arange(15).reshape(3, 5)
print("Shape, N-Dimensional, Data Type, Size")
print(a.shape, " ", a.ndim, " ", a.dtype.name, " ", a.size)
b = np.array([6, 7, 8])
c = np.array([(1, 2, 3), (4, 5, 6)])
zeroes = np.zeros((3, 4))
ones = np.ones((5, 6))
