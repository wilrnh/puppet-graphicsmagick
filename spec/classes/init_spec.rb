require 'spec_helper'
describe 'graphicsmagick' do

  context 'with defaults for all parameters' do
    it { should contain_class('graphicsmagick') }
  end
end
