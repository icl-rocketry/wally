import plotly.graph_objs as go
import numpy as np
# pip install matplotlib
import matplotlib.pyplot as plt
# pip3 install SymPy 
from sympy import Symbol, Plane, Point3D, Line3D#, Normal_Vector
# pip install vector 
import vector 

def upper_tri_masking(A):
    m = A.shape[0]
    r = np.arange(m)
    mask = r[:,None]<r
    return A[mask]

# Define the range for the variable axis
x = np.arange(-100, 105, 5)
y = np.zeros_like(x)

# Define the equation for the positive half of the 2D parabola
z_max = 10000
z = z_max - x**2
x = x*50

# Define the ground stations
x_gs = [0,9000,3000,4500,3500,7500,-6000]
y_gs = [2000,-6500,8000,9500,-5000,-7500,0]
z_gs = [0,20,50,15,-10,2,28]

# Create a 3D scatter plot for every dot (to visualize)
fig = go.Figure(data=[go.Scatter3d(x=x_gs, y=y_gs, z=z_gs, mode='markers', marker=dict(color='red', size=4)), go.Scatter3d(x=x, y=y, z=z, mode='markers', marker=dict(color='blue', size=4))])

# Calculate distances from each ground station at each point of the flight
gs_distarr = np.zeros((len(x),len(x_gs)))
for i in range(len(gs_distarr)):
    for j in range(len(gs_distarr[0])):
        gs_distarr[i][j] = np.sqrt((x_gs[j] - x[i])**2 + (y_gs[j] - y[i])**2 + (z_gs[j] - z[i])**2)

# Time of each point of the rocket flight path (assumed even 500 seconds)
time = np.linspace(0,500,len(x))

#convert distances into time difference in recieved signals
time_signals_recieved = np.zeros((len(x),len(x_gs)))
for i in range(len(time_signals_recieved)):
    for j in range(len(time_signals_recieved[0])):
        time_signals_recieved[i][j] = time[i] + gs_distarr[i][j]/299792458

# print(time_signals_recieved)

# Update layout
fig.update_layout(title='Visual scene')

# Show the plot
fig.show()


v = np.zeros((len(x_gs),len(x_gs)))
for i in range(len(x_gs)):
    for j in range(len(x_gs)): # Iterating over the number of ground stations
        v[i][j] = np.sqrt((x_gs[j] - x_gs[i])**2 + (y_gs[j] - y_gs[i])**2 + (z_gs[j] - z_gs[i])**2)


# Reconstructing the trajectory from the time received. 
# The difference in the signals shows the distance of the rocket at a given point in time.
gs_dis_new = np.zeros((len(x),len(x_gs)))

for i in range(len(x)): # values of time. 

    planes = np.zeros((len(x_gs),len(x_gs)), dtype=Plane)

    for j in range(len(x_gs)): # Iterating over the number of ground stations
        # Calculating the distance between each ground station and target (for each time)
        gs_dis_new[i][j] = (time_signals_recieved[i][j] - time[i])*299792458

    for k in range(len(x_gs)): # Iterating over each ground station.
        for l in range(len(x_gs)): # to each other ground station.
            if v[k][l] == 0 : # Checking for divide by 0 error. 
                continue 
            else: 
            # Distance from each ground station to a point on the intersecting plane 
                point1 = [x_gs[k],y_gs[k],z_gs[k]]
                point2 = [x_gs[l],y_gs[l],z_gs[l]]
                v12 = np.array(point1) - np.array(point2) 
                # d12 is an array of 1x7 - should not be. 
                d12 = (gs_dis_new[i][k]**2 - gs_dis_new[i][l]**2 + v[k][l]**2)/(2 * v[k][l])
                # v12[k][l] = np.array(point1) - np.array(point2)
                # d12[k][l] = (gs_dis_new[k]**2 - gs_dis_new[l]**2 + v[k][l]**2)/(2 * v[k][l])
                # Coordinates on the intersection circle.
                # d_coord[k][l] = v12[k][l]*(d12[k][l]/v[k][l]) + (x_gs[k],y_gs[k],z_gs[k])
                d_coord = v12*(d12/v[k][l]) + [x_gs[k],y_gs[k],z_gs[k]] # this needs to be stored in an array. 
                
                planes[k][l] = Plane(Point3D(d_coord), normal_vector=(v12))

    

    newplanes = upper_tri_masking(planes)

    points = np.zeros((len(newplanes),len(newplanes),len(newplanes)))

    for n in range(len(newplanes)): 
        for o in range(len(newplanes)):
            for p in range(len(newplanes)):
                if newplanes[n] == newplanes[o] or newplanes[n] == newplanes[p] or newplanes[p] == newplanes[o]:
                    points[n][o][p] = 0
                else:
                    
                    linetemp = newplanes[n].intersection(newplanes[o])
                    
                    if linetemp:
                        
                        print("---------")
                        point = newplanes[p].intersection(linetemp[0])
                        if point:
                            print(point[0])
                    


                

    # Calculating the coordinates of the d value. 
                
    # Calculating the exact position of the rocket by equating the positioning of all the spheres.

                
                # 03 Feb 2024 
                # Calculated the point on the intersection plane. Tried to calculate the coordinates of the point 
                # on the intersection plane - need this and the normal vector to continue. - sharwa has a function for this. 
                # to continue to do plane calculations - might need to use algebraic/ plane toolbox. 

