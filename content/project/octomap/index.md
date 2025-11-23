---
title: "OctoMap Contribution"
summary: "Efficient octree traversal and ray based operations for 3D robotic mapping, developed as part of my bachelor thesis."
tags:
  - Other
  - OctoMap
  - Robotics
  - 3D Mapping
  - C++
  - Octrees
  - Raycasting
  - Raytracing
  - Occupancy Grids
  - Connected Components
date: "2010-12-20"

image:
  caption: "Efficient octree traversal for 3D mapping with OctoMap"
  focal_point: "center"
---


## Efficient octree traversal for robot navigation with OctoMap

My first larger C++ project began in 2010 when I wrote my bachelor thesis in the context of OctoMap, the well known open source framework for probabilistic 3D mapping. The project marked my first real contact with C++ and introduced me to volumetric data structures, robotics concepts, and efficient tree based algorithms.

The goal of the thesis was to investigate and accelerate octree traversal methods for ray based operations in 3D volumetric maps. Autonomous robots rely on probabilistic 3D models for collision free navigation and path planning, and OctoMap provides such models by storing occupancy information in a compressed octree structure. Insertions and updates are driven by raycasting and raytracing, which in turn depend heavily on traversal performance.

The work explored multiple traversal strategies within OctoMap and evaluated how shortcuts, reorganized traversal orderings, and memory handling affect the speed of ray based operations. The experiments demonstrated that raytracing can be accelerated through specific traversal shortcuts, while raycasting benefits significantly from improved memory management strategies. These optimizations showed measurable gains in the insertion and update cycle of 3D sensor data.

Building on these findings, the thesis also introduced an approach for segmenting OctoMaps into connected components of free or occupied space. Two segmentation variants were implemented and analyzed, one optimized for the compressed octree representation, and one for the expanded representation. The resulting algorithms were statistically evaluated and demonstrated how connected components could form a foundation for later object recognition or higher level map analysis.

This project was my entry point into robotics oriented software engineering and 3D data structures, and it remains a meaningful milestone from the early days of my academic path.

---

## Links and Resources

- **OctoMap Project Homepage:**  
  https://octomap.github.io/
