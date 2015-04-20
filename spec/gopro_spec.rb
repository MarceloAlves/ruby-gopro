require 'spec_helper'

describe Gopro do
  let(:hero) { Gopro.new }
  it 'has a version number' do
    expect(Gopro::VERSION).not_to be nil
  end

  context 'intialize' do
    it 'has ip address' do
      hero = Gopro.new
      expect(hero.instance_variable_get(:@gopro_ip)).to eq '10.5.5.9'
    end
  end

  context 'modes' do
    it 'switches to video mode' do
      pending("to do")
      fail
    end

    it 'switches to photo mode' do
      pending("to do")
      fail
    end

    it 'switches to burst mode' do
      pending("to do")
      fail
    end
  end

  context 'commands' do
    it '.status returns json' do
      VCR.use_cassette("status") do
        status = hero.status
        expect(status).to have_http_status(:success)
      end
    end

    it 'starts capture' do
      VCR.use_cassette("start_capture") do
        response = hero.start_capture
        expect(response.code).to eq(200)
      end
    end

    it 'stops capture' do
      VCR.use_cassette("stop_capture") do
        response = hero.stop_capture
        expect(response).to have_http_status(:success)
      end
    end
  end

  context 'media' do
    it 'deletes last media' do
      pending("to do")
      fail
    end

    it 'deletes all media' do
      pending("to do")
      fail
    end

    it 'lists all media' do
      pending("to do")
      fail
    end
  end
end