require './lookAndSay'

describe 'LookAndSay' do

  context 'testing getSequens' do

    it 'seed=\'1\' and we call getSequens()' do
      seq = LookAndSay.new
      seq.seed = '1'
      expect(seq.getSequens).to eq "1\n11\n21\n1211\n111221\n"
    end
  
    it 'seed=\'\' and we call getSequens()' do
      seq = LookAndSay.new
      seq.seed = ''
      expect(seq.getSequens).to eq "\n\n\n\n\n"
    end
  
    it 'seed=1 and we call getSequens()' do
      seq = LookAndSay.new
      seq.seed = 1
      expect(seq.getSequens).to eq "1\n11\n21\n1211\n111221\n"
    end
  
    it 'seed=1 and we call getSequens("   5    ")' do
      seq = LookAndSay.new
      seq.seed = 1
      expect(seq.getSequens("   5    ")).to eq "1\n11\n21\n1211\n111221\n"
    end
  end

  context 'testing getNext' do
    
    it 'arg = "1"' do
      expect(LookAndSay.getNext("1")).to eq "11"
    end

    it 'arg = "123"' do
      expect(LookAndSay.getNext("123")).to eq "111213"
    end

    it 'arg = 432' do
      expect(LookAndSay.getNext(432)).to eq "141312"
    end

    

  end

  


end