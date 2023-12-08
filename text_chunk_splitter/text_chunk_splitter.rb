file_path = 'input.txt'

# Function to split text into chunks without cutting words
def split_text_into_chunks(text, chunk_size)
  chunks = []
  while text.length > 0
    break_point = text.rindex(' ', chunk_size) || chunk_size
    chunks << text[0...break_point].strip
    text = text[break_point..-1].strip
  end
  chunks
end

# Read the file content
text = File.read(file_path)

# Split the text into 1500 character chunks
chunks = split_text_into_chunks(text, 1500)

# Output the chunks (or process them as needed)
chunks.each_with_index do |chunk, index|
  puts "Chunk #{index+1}:"
  puts chunk
  puts "---"
end