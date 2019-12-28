---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Volume Renderer for use with MATLAB®"
summary: "GPU accelerated volume renderer for use with MATLAB®"
authors: [admin]
tags: [volume renderer, software, 3D image analysis]
categories: [Software]
date: 2012-07-14T17:09:58+01:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: true

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: ""
url_pdf: "/downloads/volumerenderer-1.0.pdf"
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""

draft: false
share: false
commentable: false
editable: false
---
## Features

_Volume Renderer for use with MATLAB®_ extends MATLAB® by a GPU-accelerated volume render command that handles 3D volumetric data. The core application is implemented in C/C++. To guarantee fast computations the render process computes on the GPU. This is realized by NVIDIA® CUDA®. Furthermore _Volume Renderer <small>for use with MATLAB®</small>_ provides the following features:

*   **Special memory management:** Due to restricted GPU memory and the requirement to render more than one volume in one scene, we developed a special memory management to enable the rendering of huge data sets in separate rendering passes. Afterward these separately rendered images are combined to one image using MATLAB®.
*   **Generic illumination model:** We developed a generic illumination model that is easy to extend with other illumination functions. The provided function is the Heneyey-Greenstein phase function.
*   **Stereo rendering:** In some use cases there is a nice feature to work with stereo images. Thus, the renderer offers the possibility to render off-axis stereo images.
*   **High usability:** To enable a high usability a MATLAB® interface consisting of several MATLAB® classes has been developed. Due to this interface it is uncomplicated to generate movies.

More detailed explanation of the renderer and its background can be found in the documentation in the download section. We provide this software only for 64 bit Linux systems.  
It was developed by Raphael Scheible supervised by Benjamin Ummenhofer and Junior-Prof Dr. Olaf Ronneberger and is maintained by Raphael Scheible.


## Requirements

*   CUDA® capable NVIDIA® graphics device  
    <small>(at least Fermi™ architecture)</small>
*   Linux computer (64 bit) with installed NVIDIA® driver and CUDA® 4.2
*   MATLAB® (*)

<small>* tested and developed under R2010a; might work from 2009a as the OOP feature was introduced the renderer uses.</small>



## Example

The following video demonstrates the power of the renderer.  
<small>provided by Benjamin Ummenhofer, data from [[1]](#references)</small>  

{{< youtube HdYV1dY41qw >}}


## Download

*   Documentation: [documentation-1.0.pdf](/static/volume-renderer/volumerenderer-1.0.pdf)  
    <small>md5sum: 5af53f26fe5965eb7ac9d69a2c0050be</small>
*   Software: [vrm-1.0.tar.gz](/static/volume-renderer/vrm-1.0.tar.gz)  
    <small>md5sum: f324f09f3b7845876e5caf50a71b2f12</small>


## Installation

Copy the files of src/matlab/ and bin/ into your current working folder. From this locationyou can now easily call the renderer.  

If you want to compile src/HeneyeyGreenstein.cc by yourself, use themex command in your MATLAB® environment:  
**mex** _inputfile_ -output _resultname_  

For a more detailed explanation of the mex command visit [this website](http://www.mathworks.com/help/matlab/ref/mex.html) .  

Alternatively, you can use the HG.mexa64\. This provides the command to build alookup table for the illumination setup. This is a compiled version of HeneyeyGrennstein.cc.  
If you want to write your own illumination function, you can adaptHeneyeyGrennstein.cc accordingly.


## Licence

The provided matlab code and C-code for building the Heneyey-Greenstein LUT are released under [New BSD License](http://opensource.org/licenses/BSD-3-Clause) .  
The matlab binary files (render command and binary of Heneyey-Greenstein.h) are relesed under the following license:

```bash
Copyright © 2012, Raphael Scheible All rights reserved.

Redistribution and use of the software, with or without modification, are permitted provided that 
the following conditions are met:

1.  Redistributions must reproduce the above copyright notice, this list of conditions and 
    the following disclaimer in the documentation and/or other materials provided with the distribution.
2.  No names of contributors may be used to endorse or promote products derivedfrom this 
    software without specific prior written permission.
3.  The project has to be non-commercial in which this softare is used.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR 
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY 
AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

## Contact

Feel free to contact [Raphael Scheible](/#contact) with questions and issues. If you find a bug, please report it.

### Using _Volume Renderer <small>for use with MATLAB®</small>_ ?

Please let me know if you are using _Volume Renderer <small>for use with MATLAB®</small>_ as I am interested in how it is used in other research works.


## Acknowledgments

_Volume Renderer <small>for use with MATLAB®</small>_ was developed as a student project by Raphael Scheible at University of Freiburg supervised by [Benjamin Ummenhofer](http://lmb.informatik.uni-freiburg.de/people/ummenhof/) and [Junior-Prof. Dr. Olaf Ronneberger](http://lmb.informatik.uni-freiburg.de/people/ronneber/) .



## References

1.  <a name="ref1"></a>Ronneberger, O and Liu, K and Rath, M and Ruess, D and Mueller, T and Skibbe, H and Drayer, B and Schmidt, T and Filippi, A and Nitschke, R and Brox, T and Burkhardt, H and Driever, W. **[ViBE-Z: A Framework for 3D Virtual Colocalization Analysis in Zebrafish Larval Brains](http://lmb.informatik.uni-freiburg.de//Publications/2012/RLSDSBB12) .** 2012. _Nature Methods,_ 9(7):735--742.




