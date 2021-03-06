require 'spec_helper'


describe "iterm2::dev" do
  version = ''
  major = '2_1'
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
