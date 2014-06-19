require 'spec_helper'

describe Library do

  def reset_library(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @library.destroy! if @library
    @library = Library.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_library
  end

  context "validations" do
    
    it "rejects empty name" do
      Library.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_library
      Library.new(@valid_attributes).should_not be_valid
    end
    
  end

end