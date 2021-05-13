require 'game'

describe Game do
  let(:player_1) { double("Player") }
  let(:player_2) { double("Player") }
  let(:subject) { described_class.new(player_1, player_2) }
  
  describe '#attack' do
    it 'attacks a second player' do
      expect(player_2).to receive(:take_damage)
      subject.attack(player_2)
    end
  end

  describe '#player_one' do
    it 'returns a instance of a player' do
      expect(subject.player_1).to eq(player_1)
    end
  end
end