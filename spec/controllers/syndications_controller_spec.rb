require 'rails_helper'

RSpec.describe Api::V1::SyndicationsController, type: :controller do

  describe 'GET show /syndication/<:name>/' do
    subject(:syndications_by_name) { get :show, params: {name: 'test'} }

    context 'when data exists' do
      let!(:syndications) { create_list(:syndication, 5, name: 'test.txt') }

      let(:result) { syndications.map { |syn| syn.body }.join('')}

      it 'returns a list of syndications' do
        expect(syndications_by_name.body).to eq result
      end
    end

    context 'when data does not exist' do
      it 'returns no result message' do
        debugger
        expect(syndications_by_name.body).to eq 'No results found'
      end
    end
  end
end
