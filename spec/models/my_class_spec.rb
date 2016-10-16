require 'rails_helper'

RSpec.describe MyClass, type: :model do
  before(:each) do
    @class = MyClass.first
    @user = User.first
    @class.user = @user
    @class.tasks << Tasks.first
    @class.tasks << Tasks.last
    @class.cheers << Cheer.first
  end

  it "is valid with a user, course title, and topic" do
    expect(@class).to be_valid
  end

  it "belongs to one user" do
    expect(@class.user).to eq(@user)
  end

  it "has many tasks" do
  	expect(@class.tasks.count).to eq(2)
  end

  it "has many cheers" do
  	expect(@class.cheers.count).to eq(1)
  end  


end