import plotly.graph_objs as go
import numpy as np
# pip install matplotlib
import matplotlib.pyplot as plt
# pip3 install SymPy 
from sympy import Symbol, Plane, Point3D, Line3D#, Normal_Vector
# pip install vector 
import vector 



plane1 = Plane(Point3D(164437194127243/100000000000.0, 446982055464927/1000000000000.0, 0), (-9000, 8500, 0))
plane2 = Plane(Point3D(200, 1600, 0), (-3500, 7000, 0))
plane3 = Plane(Point3D(5100, 3700, 0), (6000, 2000, 0))

normal = plane2.normal_vector
point = np.array(plane2.p1)
print(point)

d = -point.dot(normal)

# x, y = np.meshgrid(range(10000), range(10000))
x = np.linspace(0, 10000)
y = np.linspace(0, 10000)

z = (-normal[0] * x - normal[1] * y - d) * 1. /normal[2]


fig = plt.figure()

ax = fig.add_subplot(111, projection='3d')
ax.plot_surface(x,y,z)
plt.show()