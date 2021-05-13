require 'player'

describe Player do 
  subject(:charlotte) { Player.new("Charlotte") }
  subject(:mittens) { Player.new("Mittens") }
  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq("Charlotte")
    end
  end
    
  describe '#hp' do
    it 'returns the hitpoints' do
      expect(charlotte.hp).to eq(60)
    end
  end

  describe '#attack' do
    it 'reduces different player hp by 10' do
      charlotte.attack(mittens)
      expect(mittens.hp).to eq(50)   
    end
  end
end