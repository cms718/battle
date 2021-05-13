require 'game'

describe Game do
  describe '#attack' do
    let(:charlotte) { Player.new("Charlotte") }
    it 'attacks a player' do
      # subject.attack(charlotte)
      expect{ subject.attack(charlotte) }.to change{ charlotte.hp }.by(-10)
    end
  end
end