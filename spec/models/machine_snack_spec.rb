require 'rails_helper'

describe MachineSnack, type: :model do
  describe 'Relationship' do
    it { should belong_to(:snack) }
    it { should belong_to(:machine) }
  end
end
