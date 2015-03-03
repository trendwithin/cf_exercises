require 'spec_helper'
require 'websearch'

describe  "My search page" do
  it "returns a search query" do
    visit "http://google.com"
    fill_in "q", with: "Rails minitest"
    click_on "Google Search"
    #save_and_open_page
    page.text.must_include "seattlerb"
  end
end
