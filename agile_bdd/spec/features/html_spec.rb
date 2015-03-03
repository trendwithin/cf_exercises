require 'spec_helper'

describe "Open a local webpage" do
  it "takes you to the outer limits" do
    visit "/index.html"
    page.text.must_include "television"
  end
end
