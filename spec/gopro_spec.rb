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
      VCR.use_cassette("video mode") do
        response = hero.mode(0)
        expect(response.code).to eq(200)
      end
    end

    it 'switches to photo mode' do
      VCR.use_cassette("photo mode") do
        response = hero.mode(1)
        expect(response.code).to eq(200)
      end
    end

    it 'switches to burst mode' do
      VCR.use_cassette("burst_mode") do
        response = hero.mode(2)
        expect(response.code).to eq(200)
      end
    end
  end

  context 'commands' do
    it '.status returns json' do
      pending("to do")
      fail
      # VCR.use_cassette("status") do
      #   response = hero.status
      #   expect(response.code).to eq(200)
      # end
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
        expect(response.code).to eq(200)
      end
    end
  end

  context 'media' do
    it 'deletes last media' do
      VCR.use_cassette("delete_last_media") do
        response = hero.delete_last_media
        expect(response.code).to eq(200)
      end
    end

    it 'deletes all media' do
      VCR.use_cassette("delete_all_media") do
        response = hero.delete_all_media
        expect(response.code).to eq(200)
      end
    end

    it 'lists all media' do
      VCR.use_cassette("list_all_media") do
        response = hero.list_media
        expect(response.code).to eq(200)
      end
    end
  end
end