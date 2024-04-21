class DiceController < ApplicationController

  def two_six
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
   render({ :template => "my_templates/two_six" }) 
  end

  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end
    render({ :template => "my_templates/two_ten" }) 
  end

  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end
    render({ :template => "my_templates/one_twenty" }) 
  end

  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end
    render({ :template => "my_templates/five_four" }) 
  end

  def flexible
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render({ :template => "my_templates/flexible" }) 
  end


  def rules
    render({ :template => "my_templates/rules" })
  end
end
