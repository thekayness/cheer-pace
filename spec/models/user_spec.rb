require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.first
  end
  
  it "is valid with a name, email, and password" do
    expect(user).to be_valid
  end

  it "is not valid without a password" do
    expect(User.new(name: "Name")).not_to be_valid
  end

  it "has many classes" do
    @user.my_classes.create
    expect(@user.my_classes.count).to eq(1)
  end

  it "has many tasks through classes" do
    some_task = Task.first
    @user.tasks << some_task
    expect(@user.tasks.first).to eq(some_task)
  end

  it "can receive many cheers through classes" do
    end

    it "can tell how many people they've cheered on"

  end

  it "can have overdue tasks"
    overdue_task = Task.first
    @user.tasks << overdue_task
    expect(@user.overdue_tasks). to eq(overdue_task)
  end

end
