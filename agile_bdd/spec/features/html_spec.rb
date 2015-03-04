require_relative 'spec_helper'

describe "Open a local webpage" do
  it "takes you to the outer limits" do
    visit "/Users/Strawman/cf_exercises/agile_bdd/public/index.html"
    page.text.must_include "television"
  end
end
