RSpec.describe default do
  it "has a .nil? that returns true" do
    expect(default.nil?).to eq true
  end

  describe ".inspect" do
    it 'returns "default"' do
      expect(default.inspect).to eq "default"
    end
  end

  # Sadly, I have not accomplished this level of Ruby wizardry yet.
  #it "behaves as if it is falsey when on the left side of ||" do
  #  expect(default || true).to eq true
  #end

  describe ".default?" do
    it "returns true" do
      expect(default.default?).to eq true
    end
  end
end

RSpec.describe nil do
  describe ".default?" do
    it "returns false" do
      expect(nil.default?).to eq false
    end
  end
end
