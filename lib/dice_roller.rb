class DiceRoller
  def self.roll_dice options
    return 0 if options.empty?
    rolled_sum = 0
    options.each do |k, v|
      #v.times { rolled_sum += rand(1..k) } less verbose and preferred way
      v.times do
        dice = rand(1..k)
        puts dice
        rolled_sum += dice
      end
    end
    puts rolled_sum
    rolled_sum
  end

  def self.generate_options
    #should return one of the random options possible
    # option 1: return a single die of 6
    # option 2: return two dies of limit 8
    # option 3: return a single die of 6 sided die and return a 20-sided die
    # Could have run the rand functions here itself.. but wanted to show case the test and also becomes scalable
    # if we get to roll more dices
    puts "Generating options"
    case rand(1..3)
    when 1
      puts "You have got a single die of 6"
      {6 => 1}
    when 2
      puts "You have got a couple of 8-sided dies"
      {8 => 2}
    when 3
      puts "Crazy: You have got a die of 6-side and another 20-sided"
      {6 => 1, 20 => 1}
    end
  end

end
options = DiceRoller.generate_options
DiceRoller.roll_dice(options)