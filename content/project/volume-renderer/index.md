---
title: "Volume Renderer for use with MATLAB"
summary: "A CUDA based GPU volume rendering engine with a MATLAB interface."
tags:
  - Featured
  - Other
  - GPU Rendering
  - CUDA
  - MATLAB
  - Volume Rendering
  - Medical Imaging
  - Scientific Visualization
  - C++
  - High Performance Computing
date: "2024-01-01"

image:
  caption: "GPU accelerated volume rendering for MATLAB"
  focal_point: "center"
---


## From a student project to a polished tool: GPU volume rendering for MATLAB

Volume Renderer for use with MATLAB started as my master project at the University of Freiburg in 2012, supervised by Benjamin Ummenhofer and apl. Prof. Dr. Olaf Ronneberger. At the time, MATLAB offered only limited support for interactive, high quality volume rendering of 3D data on the GPU, especially for larger medical volumes and multi volume scenes. The project filled this gap by adding a GPU enabled volume render command to MATLAB that could be used directly from scripts and applications.

The core renderer is written in CUDA C and C++, while the user interface is provided through a set of MATLAB classes. This design separates performance critical code from user facing logic and allowed us to integrate advanced rendering concepts into a familiar MATLAB workflow. Users can call the renderer like any other MATLAB function, yet the heavy lifting happens on the GPU.

A central feature of the system is its custom memory management. GPU memory is limited, but many use cases require rendering multiple large volumes in a single scene. To address this, the renderer splits the scene into separate rendering passes that fit into GPU memory, then combines the resulting images inside MATLAB into a single final frame. On top of that, volumes are only transferred to the GPU when the underlying data changes, which keeps repeated renders fast by reusing GPU memory across calls.

The renderer also implements a generic illumination model that can be extended with different phase functions. The provided implementation uses the Henyey Greenstein phase function, which allows realistic lighting effects for volumetric data. For specific applications the tool supports off axis stereo rendering, which makes it possible to create stereo pairs and 3D movies for immersive visualization.

High usability was a design goal from the beginning. The MATLAB interface is built around a small set of classes that make it straightforward to configure scenes, adjust parameters, and generate animations programmatically. This makes the renderer suitable not only for research prototypes, but also for teaching and reproducible figure generation.

After an initial active phase during my studies the project sat idle for several years. When I moved to Munich in 2021 I resumed work on the codebase, updated the toolchain, improved the documentation, and prepared the project for a proper open source release. The result was a journal publication in 2024 and a cleaned up public repository that others can build on.

Volume Renderer for use with MATLAB is released under the GNU Affero General Public License version 3. The example scripts are licensed under MIT, so they can be easily reused and adapted. The full source code is available on GitHub, together with usage examples and build instructions.

---

## Links and Resources

- **Journal Publication (2024):**  
  https://www.mdpi.com/2673-6470/4/4/49

- **GitHub Repository:**  
  https://github.com/raphiniert-com/volume_renderer