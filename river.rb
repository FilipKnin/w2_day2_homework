class River
  attr_reader(:name, :fishes)
  attr_writer(:fishes)

  def initialize(name)
    @name = name
    @fishes = []
  end


def add_fish(fish)
  @fishes.push(fish)
end

def remove_fish(fish)
  @fishes.delete(fish)
end

end
