require 'spec_helper'

describe User do
  before(:each) do
    @user = create_fake_user
  end
  
  it "exists" do
    expect(@user).to be
  end
end
