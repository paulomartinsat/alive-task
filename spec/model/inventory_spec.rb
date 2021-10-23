require 'rails_helper'
describe 'validate new inventory' do
  context 'when be valid' do
    let(:inventory) { create(:inventory) }
    it { expect(inventory).to be_valid }
  end
  context 'when be valid' do
    let(:inventory1) { create(:inventory) }
    inventory1.model = '' # invalid state
      inventory1.validate 
      expect(inventory1.errors[:model]).to include("can't be blank")
  end
end