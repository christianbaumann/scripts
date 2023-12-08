require 'fileutils'

file_path = 'input.txt'
chunk_size = 1500

# Function to split text into chunks without cutting words
def split_text_into_chunks(text, chunk_size)
  chunks = []
  until text.empty?
    break_point = [chunk_size, text.length].min
    break_point = text.rindex(' ', break_point) || break_point
    chunk = text[0...break_point].strip
    chunks << chunk unless chunk.empty?
    text = text[break_point..].strip
  end
  chunks
end

# Construct the output file name
base_name = File.basename(file_path, ".*")
ext_name = File.extname(file_path)
output_file = "#{base_name}_splitted_#{chunk_size}#{ext_name}"

# Read the file content
text = File.read(file_path)

# Split the text into chunks
chunks = split_text_into_chunks(text, chunk_size)

# Write chunks to the new file
File.open(output_file, 'w') do |file|
  chunks.each do |chunk|
    file.puts(chunk)
    file.puts("---")  # Optional: Adds a separator between chunks
  end
end

puts "Chunks written to #{output_file}"
