# read the input markdown
input_markdown = File.read(ARGV[0])

# convert the markdown to html
require 'redcarpet'
renderer = Redcarpet::Render::HTML.new
markdown = Redcarpet::Markdown.new(renderer)
rendered_html = markdown.render(input_markdown)

# write the html to the output file
File.write(ARGV[1], rendered_html)

# print the summary
$stdout.puts "Converted #{ARGV[0]} (#{input_markdown.split("\n").count} lines) to #{ARGV[1]} (#{rendered_html.split("\n").count} lines)"
