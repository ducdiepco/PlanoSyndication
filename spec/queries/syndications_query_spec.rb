require 'rails_helper'

RSpec.describe SyndicationsQuery  do
  describe '#search_by_name' do
    subject(:search_by_name){ described_class.new(name: 'test').search_by_name }

    before { create_list(:syndication, 5, name: 'test.txt') }

    it 'returns all syndications belong to name' do
      expect(search_by_name.size).to eq 5
    end
  end
end
