puts ARGV.map { |fn| File.read(fn) }.join
