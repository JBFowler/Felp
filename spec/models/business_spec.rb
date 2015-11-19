require 'spec_helper'

describe Business do
  it "saves itself" do
    business = Business.new(name: "Harry's", description: "A local diner", city: "Birmingham", state: "AL")
    business.save
    expect(Business.first).to eq(business)
  end
end