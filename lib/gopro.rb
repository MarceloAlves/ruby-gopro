require "gopro/version"

module GoPro
  class Hero
    attr_accessor :ip, :password

    def initialize(options={})
      @gopro_ip = options[:ip] || '10.5.5.9'
      @gopro_password = options[:password]
    end
  end
end
