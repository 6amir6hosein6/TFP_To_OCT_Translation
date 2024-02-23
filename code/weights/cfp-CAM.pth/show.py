import numpy as np

img_array = np.load('f-d-27559.jpg.npy')

from matplotlib import pyplot as plt

plt.imshow(img_array[3])
plt.show()
