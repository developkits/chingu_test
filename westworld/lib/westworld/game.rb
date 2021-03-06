class Game < Chingu::Window
  def initialize
    super
    self.input = { :escape => :exit } # exits example on Escape

    @miner = Miner.create(:x => 200, :y => 200)
    @miner.speak('asdfasdf')

    @wife = Wife.create(:x => 200, :y => 400)

    @bank_balance = Chingu::Text.create('', :size => 20, :x => 20, :y => 20)
    @pocket_balance = Chingu::Text.create('', :size => 20, :x => 20, :y => 50)
  end

  def draw
    super
  end

  def update
    super
    @bank_balance.text = "Gold in the bank: #{@miner.money_in_bank}"
    @pocket_balance.text = "Gold in pocket: #{@miner.gold_carried}"
  end
end

Game.new.show
