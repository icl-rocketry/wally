#%%

import plotly.graph_objects as go
import numpy as np

# Define the parabolic function
def parabolic_function(x, y):
    return x**2 + y**2

# Generate data
x = np.linspace(-5, 5, 100)
y = np.linspace(-5, 5, 100)
x, y = np.meshgrid(x, y)
z = parabolic_function(x, y)

# Create a 3D surface plot using Plotly
fig = go.Figure(data=[go.Surface(z=z, x=x, y=y)])

# Set layout
fig.update_layout(scene=dict(
                    xaxis_title='X',
                    yaxis_title='Y',
                    zaxis_title='Z'),
                  )

# Show the plot
fig.show()
