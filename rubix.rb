require 'erb'

page_title = "Hello, ERB."

ice_cream = [
  "Rocky Road",
  "Vanilla",
  "Mint Chocolate Chip",
  "Moose Tracks",
  "American Dream",
  "Cherry Garcia",
  "Reese's Pieces",
  "Neapolitan"
]

template = ERB.new(File.read('index.html.erb'))

File.open('index.html', 'w') do |file|
  file.write template.result
end
