###########################
# Numpy Array Exploration #
###########################

# Reference List:
# 1. https://datax911.files.wordpress.com/2016/12/tensorflow-getting-started.pdf

import tensorflow as tf
import numpy as np

# Creating 100 sampled x, y coordinates
x_data = np.random.rand(100).astype(np.float32)
y_data = x_data * 3 + 4 #Slope and Intercept

# Tensorflow Curve Fitting
m = tf.Variable(tf.random_uniform([1], -5.0, 5.0))
b = tf.Variable(tf.zeros([1]))
y = m * x_data + b

# Minimize mean squared errors
error = tf.reduce_mean(tf.square(y - y_data))
optimizer = tf.train.GradientDescentOptimizer(0.5)
train = optimizer.minimize(error)

# Initialization
init = tf.global_variables_initializer()
