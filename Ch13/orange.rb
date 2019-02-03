class OrangeTree
  def initialize
    @height = 1
    @oranges = 0
    @year = 0
  end

  def height?
    @height
  end

  def one_year_passes
    @year = @year + 1
    @oranges = 0
    if @year <= 5
      @height = @height + 0.5
    elsif @year > 5 && @year <= 50
      @height = @height + 0.2
      @oranges = rand(78) + 5
    elsif @year > 50
      @oranges = rand(152) + 12
    end
    if @year == 100
      puts "Tree dies!"
      exit
    end
  end

  def count_oranges
    @oranges
  end

  def pick_orange
    if @oranges == 0
      puts "There are no more oranges."
      return
    end
    @oranges = @oranges - 1
    puts "The orange was very delicious!"
  end
end

tree = OrangeTree.new
8.times do
  tree.one_year_passes
end
tree.pick_orange
puts tree.count_oranges
