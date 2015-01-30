require 'spec_helper'
require 'factory_girl_bs_gen'

describe FactoryGirlBsGen::Formatter::CreateFormatter do
  let(:formatter) { FactoryGirlBsGen::Formatter::CreateFormatter.new }
  let(:omit_syntax) { false }

  context '#template' do
    it 'templateが正しいこと' do
      expect("create(:%{table}, %{values})").to eq formatter.template
    end
  end

  context '#format' do
    it 'formatが正しいこと' do
      table = 'table_name'
      column_names = ['hoge', 'foo', 'bar']
      row = [1, 2, 3]
      expect(formatter.format(table, column_names, row, omit_syntax)).to eq "FactoryGirl.create(:table_name, hoge:1, foo:2, bar:3)"
    end
  end

  context '#format' do
    it 'formatが省略記法で正しいこと' do
      table = 'table_name'
      column_names = ['hoge', 'foo', 'bar']
      row = [1, 2, 3]
      omit_syntax = true
      expect(formatter.format(table, column_names, row, omit_syntax)).to eq "create(:table_name, hoge:1, foo:2, bar:3)"
    end
  end
end

describe FactoryGirlBsGen::Formatter::BuildFormatter do
  let(:formatter) { FactoryGirlBsGen::Formatter::BuildFormatter.new }
  let(:omit_syntax) { false }

  context '#template' do
    it 'templateが正しいこと' do
      expect("build(:%{table}, %{values})").to eq formatter.template
    end
  end

  context '#format' do
    it 'formatが正しいこと' do
      table = 'table_name'
      column_names = ['hoge', 'foo', 'bar']
      row = [1, 2, 3]
      expect(formatter.format(table, column_names, row, omit_syntax)).to eq "FactoryGirl.build(:table_name, hoge:1, foo:2, bar:3)"
    end
  end

  context '#format' do
    it 'formatが省略記法で正しいこと' do
      table = 'table_name'
      column_names = ['hoge', 'foo', 'bar']
      row = [1, 2, 3]
      omit_syntax = true
      expect(formatter.format(table, column_names, row, omit_syntax)).to eq "build(:table_name, hoge:1, foo:2, bar:3)"
    end
  end
end
