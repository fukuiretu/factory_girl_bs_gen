require 'spec_helper'
require 'factory_girl_bs_gen'

describe FactoryGirlBsGen::Formatter::CreateFormatter do
  let(:formatter) { FactoryGirlBsGen::Formatter::CreateFormatter.new }

  context '#template' do
    it 'templateが正しいこと' do
      expect("FactoryGirl.create(:%{table}, %{values})").to eq formatter.template
    end
  end

  context '#format' do
    it 'formatが正しいこと' do
      table = 'table_name'
      column_names = ['hoge', 'foo', 'bar']
      row = [1, 2, 3]
      expect(formatter.format(table, column_names, row)).to eq "FactoryGirl.create(:table_name, hoge:1, foo:2, bar:3)"
    end
  end
end

describe FactoryGirlBsGen::Formatter::BuildFormatter do
  let(:formatter) { FactoryGirlBsGen::Formatter::BuildFormatter.new }

  context '#template' do
    it 'templateが正しいこと' do
      expect("FactoryGirl.build(:%{table}, %{values})").to eq formatter.template
    end
  end

  context '#format' do
    it 'formatが正しいこと' do
      table = 'table_name'
      column_names = ['hoge', 'foo', 'bar']
      row = [1, 2, 3]
      expect(formatter.format(table, column_names, row)).to eq "FactoryGirl.build(:table_name, hoge:1, foo:2, bar:3)"
    end
  end
end
