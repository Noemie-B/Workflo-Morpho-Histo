# Workflow-Morpho-Histo
Workflow to extract morphological features from histological slides. The steps are the following ones :
  1. Patches extraction from WSI
  2. Patches normalization
  3. Nuclei segmentation with HoVer-Net model trained with the PanNuke dataset
  4. Nuclei filtering
  5. Morphological features extraction
  6. Creation of the final dataset
  7. PlsRCox (survival analysis)
  8. PCNSL Classification into 4 subtypes

We thank the developers of the following Github accounts :
  1. https://nbviewer.org/github/afiliot/TPDUIA/blob/main/TPDUIA/2022/whole_slide_images.ipynb
  3. https://github.com/vqdang/hover_net
  5. https://pyradiomics.readthedocs.io/en/latest/index.html

  Plot :
  a. https://krassowski.github.io/complex-upset/articles/Examples_Python.html 
  b. https://github.com/DingWB/PyComplexHeatmap.git
