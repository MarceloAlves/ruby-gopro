require "gopro/version"
require 'net/http'
require 'uri'

module GoPro
  class Hero
    attr_accessor :ip, :password

    def initialize(options={})
      @gopro_ip = options[:ip] || '10.5.5.9'
    end

    def camera_mode
      Net::HTTP.get(@gopro_ip, '/gp/gpControl/command/mode?p=0')
    end

    def photo_mode
      Net::HTTP.get(@gopro_ip, '/gp/gpControl/command/mode?p=1')
    end

    def burst
      Net::HTTP.get(@gopro_ip, '/gp/gpControl/command/sub_mode?mode=2&sub_mode=0')
    end

    def timelapse
      Net::HTTP.get(@gopro_ip, '/gp/gpControl/command/sub_mode?mode=2&sub_mode=1')
    end

    def nightlapse
      Net::HTTP.get(@gopro_ip, '/gp/gpControl/command/sub_mode?mode=2&sub_mode=2')
    end
  end
end
