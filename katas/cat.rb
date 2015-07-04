# https://github.com/JoshCheek/team_grit/blob/master/challenges/unix_utils.md
puts ARGV.map { |fn| File.read(fn) }.join
