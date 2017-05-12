class FileReader
  def read_and_write_contents

    content = File.read(ARGV[0])
    File.write(ARGV[1], content * 3)


    puts "#{ARGV[0]} #{ARGV[1]} containing #{ARGV[0].length} characters"
  end
end


class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
  end
#
  def encode_file_to_braille
    encode = {a => 1}
    plain = reader.read
    braille = encode_to_braille(plain)
  end
#
#   def encode_to_braille(input)
#     # you've taken in an INPUT string
#     # do the magic
#     # send out an OUTPUT string
#   end
 end
#
 #puts ARGV.inspect
FileReader.new.read_and_write_contents
