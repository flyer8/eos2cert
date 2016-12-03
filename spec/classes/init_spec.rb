require 'spec_helper'
describe 'eos2cert' do
  context 'with default values for all parameters' do
    it { should contain_class('eos2cert') }
  end
end
