class ChristmasTree

  attr_reader :height, :width

  def initialize(height)
    raise "Height must be a minimum of 3" if height < 3
    @height = height
    @width = height * 2
  end

  def drawing_stars(blank_spaces, stars)
    " " * blank_spaces + "*" * stars + "\n"
  end

  def draw_tree
    tree = ""
    row = 1
    stars = 1
    blank_spaces = width / 2 - 1

    while row <= height
      tree << drawing_stars(blank_spaces, stars)
      row += 1
      stars += 2
      blank_spaces -= 1
    end

    tree
  end

  def draw_base
    base = ""

    3.times do
      base << " " * (width / 3) + "x" * (width / 6) + "\n"
    end

    base
  end

  def draw_tree_with_base
    tree = ""
    tree << draw_tree
    tree << draw_base
    tree
  end
end
