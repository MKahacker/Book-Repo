def program_logger desc, &block
  first = "Beginning \"#{desc}\"..."
  $nest.times do
    first = " " + first
  end
  puts first
  result = block.call
  string = "...\"#{desc}\" finished, returning: #{result}"
  $nest.times do
    string = " " + string
  end
  puts string
end
$nest = 0
program_logger "outer block" do
  $nest = $nest + 1
  program_logger "some little block" do
    $nest = $nest + 1
    program_logger "teeny-tiny block" do
      "lots of love"
    end
    $nest = $nest -1
    5
  end
  program_logger "yet another block" do
    "I like Thai food!"
  end
  $nest = $nest -1
  true
end
