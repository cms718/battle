require 'game'

describe Game do
  let(:player_1) { double("Player_1") }
  let(:player_2) { double("Player_2") }
  let(:subject) { described_class.new(player_1, player_2) }
  
  describe '#attack' do
    it 'attacks a second player' do
      expect(player_2).to receive(:take_damage)
      subject.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'returns a instance of a player' do
      expect(subject.player_1).to eq(player_1)
    end
  end

  describe '#current_turn' do
    it 'returns player_1' do
      expect(subject.current_turn).to eq(player_1)
    end
  end
  
  describe '#change_turn' do
    it 'changes the current player after their turn' do
      subject.switch_player
      expect(subject.current_turn).to eq(player_2)
    end
  end

  describe '#opponent_off' do
    it 'returns the opponent of the current player' do
      expect(subject.opponent_of).to eq(player_2)
    end
  end

end