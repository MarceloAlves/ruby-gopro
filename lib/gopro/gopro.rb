require "httparty"
require "gopro/modules/commands"
require "gopro/modules/modes"
require "gopro/modules/settings"
require "gopro/modules/media"

class Gopro
  module Modules; end

  include HTTParty
  include Gopro::Modules::Commands
  include Gopro::Modules::Modes
  include Gopro::Modules::Settings
  include Gopro::Modules::Media
  
  # By default the GoPro's IP address is 10.5.5.9
  def initialize(options={})
    @gopro_ip = options[:ip] || '10.5.5.9'
    self.class.base_uri @gopro_ip
  end
end