num_lines = num_words = num_chars = 0

ARGV.each do |fn|
  body = File.read(fn)
  num_lines += body.lines.count
  num_words += body.split.count
  num_chars += body.chars.count
  puts "#{body.lines.count}\t#{body.split.count}\t#{body.chars.count}\t#{fn}"
end

puts "#{num_lines}\t#{num_words}\t#{num_chars}\ttotal" if 1 < ARGV.length
