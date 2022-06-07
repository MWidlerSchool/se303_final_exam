# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Farm

  attr_reader :plots

  def initialize
    # Plants have a name and a height
    corn = Plant.new("Sugar Baby", 3)
    radish_1 = ["Red Boomer", 1]
    radish_2 = ["Plump Pucker", 1]
    cucumber = ["Green Lady", 2]
    tomato = ["Dark Plump", 2]
    beet_1 = ["Rainbow", 1]
    beet_2 = ["Deep Darkness", 1]
    # Plots have a name and some plants
    plot_a = ["Plot A", corn, radish_1, radish_2]
    plot_b = ["Plot B", cucumber, tomato, beet_1, beet_2]
    @plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
                  # Subtract one from size because name is not a plant
    plots.reduce(0) { |total, plot| total += (plot.size - 1) }
  end

  def total_plant_heights
    total = 0
    plots.each do |plot|
      # Remove the plot name before iterating over the plants.
      plot.drop(1).each do |_plant|
        plant = Plant.new(_plant[0], _plant[1])
        total += plant.height
      end
    end
    total
  end

  class Plant
    attr_reader :name, :height

    def initialize(name, height)
      @name = name
      @height = height
    end

    def [](index)
      if(index == 0)
        name
      else
        height
      end
    end
  end

end