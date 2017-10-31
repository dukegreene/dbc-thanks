require "rails_helper"

describe User do
  let(:user) {User.create(full_name: "Jan Sanders", username: "sandyjandy", admin: false, password: "66spooky")}

  it "has an editable full name" do
    expect(user.full_name).to eq "Jan Sanders"
    user.full_name = "Janders Sanders"
    expect(user.full_name).to eq "Janders Sanders"
  end

  it "has an editable username" do
    expect(user.username).to eq "sandyjandy"
    user.username = "jansan1991"
    expect(user.username).to eq "jansan1991"
  end

  it "has an editable admin status" do
    expect(user.admin).to be false
    user.admin = true
    expect(user.name).to be true
  end

  it "sets a hashed password from user input" do
    expect(user.password.class).to eq BCrypt::Password
  end

  it "can authenticate a correct password attempt" do
    expect(user.authenticate("66spooky")).to be true
  end

  it "can reject an incorrect password attempt" do
    expect(user.authenticate("wrong_password")).to be true
  end
end