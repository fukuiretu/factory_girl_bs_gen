require 'spec_helper'
require 'factory_girl_bs_gen'
require 'stringio'

describe FactoryGirlBsGen::Generator do
  let(:generator) do
    FactoryGirlBsGen::Generator.new(
      {
        table: "hoge",
        file: "spec/sample_data/data.csv",
        format: "build",
        output: o
      }
    )
  end

  context '標準出力が期待通りか' do
    let(:o) { nil }
    let(:answer) do
      ''.tap do |v|
        v << "outputs:\n"
        v << "\tFactoryGirl.build(:hoge, hoge:1, foo:2, bar:3)\n"
        v << "\tFactoryGirl.build(:hoge, hoge:4, foo:5, bar:6)\n"
        v << "\tFactoryGirl.build(:hoge, hoge:7, foo:8, bar:9)\n"
      end
    end

    it '#gen' do
      expect { generator.gen }.to output(answer).to_stdout
    end
  end

  context 'ファイル出力が期待通りか' do
    let(:o) { '/tmp/factory_girl_bs_gen_test' }
    let(:answer) do
      ''.tap do |v|
        v << "FactoryGirl.build(:hoge, hoge:1, foo:2, bar:3)\n"
        v << "FactoryGirl.build(:hoge, hoge:4, foo:5, bar:6)\n"
        v << "FactoryGirl.build(:hoge, hoge:7, foo:8, bar:9)"
      end
    end

    it '#gen' do
      generator.gen
      expect(File.read(o)).to eq answer
    end
  end
end
