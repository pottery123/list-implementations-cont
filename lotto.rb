require './array-list.rb'
require './linked-list.rb'

class Lotto
  def initialize
    @ticket = ArrayList.new #under line is not using NODES but contigiious memory ARRAY  different underline structure but the functionally is the same
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
    end
  end

  def display_ticket
    @ticket.display.sort
  end
end

lotto_sim = Lotto.new

puts "Your ticket is......"
lotto_sim.display_ticket
