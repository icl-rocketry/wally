import plotly.graph_objs as go
import numpy as np
import matplotlib.pyplot as plt


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
z_gs = [0,0,0,0,0,0,0]

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

print(time_signals_recieved)

# Update layout
fig.update_layout(title='Visual scene')

# Show the plot
fig.show()

# Reconstructing the trajectory from the time received. 
# The difference in the signals shows the distance of the rocket at a given point in time.
gs_dis_new = np.zeros((len(x),len(x_gs)))
for i in range(len(x)):
    for j in range(len(x_gs)): # Iterating over the number of ground stations
        gs_dis_new[i][j] = (time_signals_recieved[i][j] - time[i])*299792458
        
        # Sphere of radius gs_dis_new
        u, v = np.mgrid[0:2*np.pi:20j, 0:np.pi:10j]
        x = gs_dis_new[i][j]*np.cos(u)*np.sin(v)
        y = gs_dis_new[i][j]*np.sin(u)*np.sin(v)
        z = gs_dis_new[i][j]*np.cos(v)
        ax.plot_wireframe(x-x_gs[j], y-y_gs[j], z-z_gs[j], color="r")
        fig = plt.figure()
    # Calculating the exact position of the rocket by equating the positioning of all the spheres.
        


   


