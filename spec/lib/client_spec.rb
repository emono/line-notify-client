RSpec.describe Line::Notify::Client do
  it "has a version number" do
    expect(Line::Notify::Client::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(Line::Notify::Client.greet).to eq("Hello")
  end
end
