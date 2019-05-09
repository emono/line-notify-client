RSpec.describe Line::Notify::Client do

  it "has a version number" do
    expect(Line::Notify::Client::VERSION).to eq "1.0.4"
  end

  describe ".message" do 
    context 'normal message' do
      subject { Line::Notify::Client.message(message: 'message') }
      let(:response_code) { 200 }

      it "response is 200" do
        expect(subject["status"]).to eq response_code
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
