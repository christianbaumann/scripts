# PowerPoint Text Extractor

## Overview
This Python script extracts text from a PowerPoint (PPTX) file and saves it to a text file. It's useful for quickly converting the content of presentations into a readable, plain text format.

## Prerequisites
- Python 3.x
- `python-pptx` library

To install `python-pptx`, run:
```bash
pip install python-pptx
```

## Usage
1. Set the path to your PowerPoint file in the script:
   ```python
   input_pptx = 'path_to_your_presentation.pptx'
   ```
   Replace `'path_to_your_presentation.pptx'` with the actual path to your PowerPoint file.

2. Run the script:
   ```bash
   python extract_text_from_pptx.py
   ```
   This will create a text file with the extracted text in the same directory as your PowerPoint file, but with a `.txt` extension.

## Script Details
The script reads through each slide in a PowerPoint presentation and extracts the text from each shape that contains text. It then combines all the extracted text and writes it to a text file.

## Limitations
- The script extracts plain text only and does not preserve formatting or the layout of the slides.
- It only works with `.pptx` files, not with older `.ppt` formats.
