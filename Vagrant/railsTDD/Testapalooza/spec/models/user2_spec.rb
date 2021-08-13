require 'rails_helper'

RSpec.describe User2, type: :model do
  context 'With valid attributes' do
    it 'should save'do
      expect(build(:user2, :male)).to be_valid
      expect(build(:user2, :female, :admin)).to be_valid
    end
  end

  context 'With bad attributes' do
    it 'should not save with name blank' do
      expect(build(:user2, fname:'')).to be_invalid
    end
  end
end
