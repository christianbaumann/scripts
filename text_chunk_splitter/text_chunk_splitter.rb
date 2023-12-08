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

# Read the file content
text = File.read(file_path)

# Split the text into chunks
chunks = split_text_into_chunks(text, chunk_size)

# Output the chunks (or process them as needed)
chunks.each_with_index do |chunk, index|
  puts "Chunk #{index+1}:"
  puts chunk
  puts "---"
end