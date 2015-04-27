require 'spec_helper'


describe "iterm2::dev" do
  version = '20141103'
  let(:facts) { default_test_facts }
  let(:params) {
    {
      :version => "#{version}"
    }
  }

  it do
    should contain_package("iTerm").with({
      :source   => "https://iterm2.com/downloads/beta/iTerm2-2_0_0_#{version}.zip",
      :provider => 'compressed_app'
    })
  end
end


describe "iterm2::dev" do
  version = ''
  major = '2_1'
  let(:facts) { default_test_facts }
  let(:params) {
    {
      :version => "#{version}",
      :major => "#{major}"
    }
  }

  it do
    should contain_package("iTerm").with({
      :source   => "https://iterm2.com/downloads/beta/iTerm2-#{major}.zip",
      :provider => 'compressed_app'
    })
  end
end
