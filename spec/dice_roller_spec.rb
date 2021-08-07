require "dice_roller"
#I could have also choosen this to be a single method and use before block of options
describe DiceRoller do
  describe '.generate_options' do
    it "returns a hash of size atleast 1" do
      expect(DiceRoller.generate_options).not_to be_empty
    end
  end
  describe '.roll_dice' do
    #which is not possible in this scenario, but can think of this case for CLI
    context "given an empty hash" do
      it "returns zero" do
        expect(DiceRoller.roll_dice({})).to eq(0)
      end
    end

    context "when given a single die" do
      it "returns a random rolled die" do
        expect(DiceRoller.roll_dice({6=>1})).to be_between(1,6).inclusive
      end
    end

    context "when multiple dies of same/ different size" do
      it "returns a random rolled die between the given range" do
        expect(DiceRoller.roll_dice({6=>2, 4=>1})).to be_between(3,16).inclusive
        expect(DiceRoller.roll_dice({8=>2})).to be_between(2,16).inclusive
        expect(DiceRoller.roll_dice({20=>1, 6=>1})).to be_between(2,26).inclusive
      end
    end

  end
end