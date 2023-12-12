import plotly.graph_objs as go
import numpy as np

# Define the range for the variable axis
x = np.arange(-10, 10.5, 0.5)
y = np.zeros_like(x)

# Define the equation for the positive half of the 2D parabola
z_max = 100
z = z_max - x**2
z = z * (z >= 0)  # To remove negative parts

# Create a 3D scatter plot for the points along the parabola
fig = go.Figure(data=[go.Scatter3d(x=x, y=y, z=z, mode='markers', marker=dict(color='blue', size=5))])

# Update layout and axes labels
fig.update_layout(
    title='Points Along Positive Half of 2D Parabola in 3D Space (Interval 0.5 in x, y, and z)',
    scene=dict(
        xaxis=dict(title='X-axis'),
        yaxis=dict(title='Y-axis'),
        zaxis=dict(title='Z-axis'),
    )
)

# Show the plot
fig.show()
