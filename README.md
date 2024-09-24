# Height Fields Using Shaders
## Overview
This project involves creating an interactive 3D terrain visualization using OpenGL, derived from grayscale image data. Height fields are widely used in computer graphics for terrain rendering in simulations, video games, and data visualization. The program allows users to manipulate the terrain in real-time through rotations, translations, and scaling while offering various rendering modes and custom shader effects.

Key Features:
Height Field Generation: Reads a grayscale JPEG image specified by the user, where pixel intensity values determine the terrain height.
Real-Time Manipulation: Users can rotate, translate, and scale the terrain interactively using mouse and keyboard inputs.
Multiple Rendering Modes: Supports rendering as points, lines, or solid triangles, each mode providing a unique way to visualize the terrain.
Shader-Based Smoothing and Coloring: Implements a custom vertex shader that smooths the geometry and adjusts colors based on height, enhancing the visual quality.

## Technical Details
Rendering Techniques
Height Field Representation: Models the terrain using a 2D grid of points with height values derived from image pixel intensities.
Rendering Options:
Points (key "1")
Wireframe lines (key "2")
Solid triangles (key "3")
Smooth Terrain Rendering: A specialized mode (key "4") that smooths the terrain by averaging vertex positions with their neighbors directly within the vertex shader.

Vertex Shader Functionality
The custom vertex shader operates in two modes:
Basic Mode (`keys "1", "2", "3"): Handles standard vertex transformations without modifying the color, allowing for point, line, and triangle rendering.
Enhanced Smoothing Mode (`key "4"): Smooths the terrain by averaging vertex positions with their neighboring points and dynamically adjusts the terrain height and color using shader uniform variables.
Interactive Controls

Keyboard Inputs:
1: Render terrain as points.
2: Render terrain as wireframe lines.
3: Render terrain as solid triangles.
4: Apply smoothing and adjust terrain color.
+/-: Adjust the height scaling factor.
9/0: Adjust the exponent factor for height adjustment.
Mouse Inputs:
Enables real-time interaction to rotate, move, and scale the terrain.

Additional Features
Camera and Perspective: Supports dynamic perspective views and seamless camera control.
Dynamic Vertex Coloring: Colors the terrain vertices proportionally based on their height, creating a visually striking representation of the landscape.
Frame Capture for Animation: Captures frames to create animations showcasing the terrain transformations.

Getting Started: How to run the program
./hw1 heightmap/spiral.jpg

Animation Showcase
The program can generate a series of frames to create animations that demonstrate the terrain's dynamic transformations. Users can highlight creative uses of the terrain data, such as visualizing geographic data, exploring fictional landscapes, or experimenting with different height scales and color adjustments.

