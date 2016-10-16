require 'rails_helper'

RSpec.describe Cheer, type: :model do
   before(:each) do
    	@cheer = Cheer.first
    	@usr = User.first
    	@class = MyClass.first
    	@cheer.user = @user
    	@cheer.class = @class
  end

  it "belongs to one class" do
    expect(@cheer.my_class).to eq(@class)
  end

  it "belongs to one user" do
    expect(@cheer.user).to eq(@user)
  end
end
