import polytope as pc
import numpy as np

A = np.array([
            [-0.70710678, -0.70710678],
            [ 0.70710678, -0.70710678],
            [-0.70710678,  0.70710678],
            [ 0.70710678,  0.70710678]
            ])

b = np.array([
            [-2.31053391],
            [ 1.225     ],
            [ 1.225     ],
            [ 4.76053391]
            ])

p = pc.Polytope(A,b)


# from polytope.polytope import bounding_box
from matplotlib import pyplot as plt
# fig = plt.figure()
# ax = fig.add_subplot(111)
# ax.set_xlim(0,5)
# ax.set_ylim(0,5)
# p.plot(ax)
# plt.tight_layout()
# plt.savefig("constraint_1_visual.png", dpi = 500, format = 'png')

from shapely.geometry import Polygon

poly3 = Polygon([(.45, .1), (.45, .25), (.55, .25), (.55, .1)])

x_poly3, y_poly3 = poly3.exterior.xy
fig = plt.figure()
ax = fig.add_subplot(111)
ax.set_xlim(0,1)
ax.set_ylim(0,1)
ax.plot(x_poly3, y_poly3, color='red', alpha=0.7, linewidth=3, solid_capstyle='round', zorder=2, label='Target Set')
plt.savefig("constraint_2_visual.png", dpi = 500, format = 'png')
# A_1 = np.array([[1,0],[-1,0],[1,0],[1,0]])
# b_1 = np.array([[0.45],[-0.55],[0.55],[0.55]])

# A_2 = np.array([[0, 0], [0, 0],[-1,0],[-1,0]])
# b_2 = np.array([[0],[0],[-0.45],[-0.45]])

# A_3 = np.array([[0, 0], [0, 0],[0,-1],[0,1]])
# b_3 = np.array([[0],[0],[-0.25],[0.1]])

# A = [A_1, A_2, A_3]
# B = [b_1,b_2,b_3]
# constraint_outside = constraints_class("outside", A, B)

# output_constraint_list = [constraint_outside]