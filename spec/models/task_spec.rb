require 'rails_helper'

RSpec.describe Task, type: :model do
	 before(:each) do
    	@task = Task.first
    	@class = MyClass.first
    	@task.user = @class
  end

  it "belongs to one class" do
    expect(@task.my_class).to eq(@class)
  end

  it "is valid with a title, description, status, and deadline" do
    expect(@class).to be_valid
  end


  
end
