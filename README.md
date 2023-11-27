# Workflow-Morpho-Histo 
Code used in the article :
# Artificial intelligence to classify and predict the outcome of primary CNS and nodal large B-cell lymphomas 

Workflow to extract morphological features from histological slides. The steps are the following ones :
  1. Patches extraction from WSI
  2. Patches normalization
  3. Nuclei segmentation with HoVer-Net model trained with the PanNuke dataset
  4. Nuclei filtering
  5. Morphological features extraction
  6. Creation of the final dataset
  7. PlsRCox (survival analysis)
  8. PCNSL Classification into 4 subtypes
  9. Binary classfification with Slideflow

We thank the developers of the following Github accounts :
  1. https://nbviewer.org/github/afiliot/TPDUIA/blob/main/TPDUIA/2022/whole_slide_images.ipynb
  3. https://github.com/vqdang/hover_net
  5. https://pyradiomics.readthedocs.io/en/latest/index.html
  7. https://github.com/fbertran/plsRcox.git
  9. https://github.com/jamesdolezal/slideflow.git
  10. https://github.com/jacobgil/confidenceinterval.git

  Plot :
  <ul>
  <li>https://krassowski.github.io/complex-upset/articles/Examples_Python.html</li>
  <li>https://github.com/DingWB/PyComplexHeatmap.git</li>
</ul>

Copyright <YEAR> <COPYRIGHT HOLDER>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
