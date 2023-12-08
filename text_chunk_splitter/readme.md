# Text Chunk Splitter

## Overview
The Text Chunk Splitter is a Ruby script designed to process large text files by splitting them into smaller, manageable chunks. Each chunk is created without splitting words and has a configurable size.

## Features
- Splits text into specified chunk sizes.
- Ensures words are not split across chunks.
- Outputs chunks to a new file with a dynamically generated name.
- Handles various file encodings and provides error handling for file operations.

## Usage
1. Set the `file_path` variable in the script to the path of your text file.
2. (Optional) Adjust the `chunk_size` variable to change the size of each text chunk.
3. Run the script using the following command:

```
ruby text_chunk_splitter.rb
```

4. The script will generate a new file containing the text chunks. The file will be named using the format: `inputfile_splitted_chunksize.extension`.

## Configuration
- `file_path`: The path to the text file to be processed.
- `chunk_size`: The size of each chunk (default is 1500 characters).
