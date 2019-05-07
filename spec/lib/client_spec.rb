RSpec.describe Line::Notify::Client do

  it "has a version number" do
    expect(Line::Notify::Client::VERSION).to eq "0.1.0"
  end

  describe ".message" do 
    context 'normal message' do
      subject { Line::Notify::Client.message(message: 'message') }
      let(:res) { "{\"status\":200,\"message\":\"ok\"}" }

      it "response is 200" do
        expect(subject).to eq res
      end
    end

    context 'message is nil' do
      subject { Line::Notify::Client.message(message: nil) }

      it "raise ApiClient::ArgumentError" do
        expect{subject}.to raise_error(ApiClient::ArgumentError)
      end
    end
  end
end
