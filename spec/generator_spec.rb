require 'spec_helper'
require 'factory_girl_bs_gen'
require 'stringio'

describe FactoryGirlBsGen::Generator do
  let(:generator) do
    FactoryGirlBsGen::Generator.new(
      {
        table: "hoge",
        file: "spec/sample_data/data.csv",
        format: "build"
      }
    )
  end

  context '#gen' do
    it 'gen' do
      out = "FactoryGirl.build(:hoge, hoge:1, foo:2, bar:3)\n"
      out << "FactoryGirl.build(:hoge, hoge:4, foo:5, bar:6)\n"
      out << "FactoryGirl.build(:hoge, hoge:7, foo:8, bar:9)\n"

      expect { generator.gen }.to output(out).to_stdout
    end
  end
end
