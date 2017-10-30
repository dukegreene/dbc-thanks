require "rails_helper"

describe Message do

  let(:message) {Message.new(title: "Whiskers on kittens", body: "Memes of cute animals always brightened my days during a rough Phase 2")}

  it "has a readable title" do
    expect(message.title).to eq "Whiskers on kittens"
  end

  it "has a readable display title" do
    expect(message.display_title).to eq "Whiskers On Kittens"
  end

  it "has a readable body" do
    expect(message.body).to eq "Memes of cute animals always brightened my days during a rough Phase 2"
  end

  it "has a writable title" do
    message.title = "CATS"
    expect(message.title).to eq "CATS"
  end

  it "has a writable body" do
    message.body = "OH BOY I LOVE CATS"
    expect(message.body).to eq "OH BOY I LOVE CATS"
  end
end