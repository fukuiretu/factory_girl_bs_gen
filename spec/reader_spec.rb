require 'spec_helper'
require 'factory_girl_bs_gen'

describe FactoryGirlBsGen::Reader::CsvReader do
  let(:reader) { FactoryGirlBsGen::Reader::CsvReader.new("spec/sample_data/data.csv") }

  context '#read' do
    it 'readable csv file' do
      expect([
        ['hoge', 'foo', 'bar'],
        ['1', '2', '3'],
        ['4', '5', '6'],
        ['7', '8', '9']
      ]).to eq reader.read
    end
  end
end
