class Gopro
  module Modules
    module Modes
      # Modes:
      #   Video: 0,
      #   Photo: 1,
      #   Burst: 2,
      #   Broadcast: 3,
      #   Playback: 4,
      #   Settings: 5
      # 
      # Submodes:
      #   Video
      #     Video: 0,
      #     VideoPhoto: 2,
      #     Looping: 3
      #   Photo:
      #     Single: 0,
      #     Continuous: 1,
      #     Night: 2
      #   Burst:
      #     Burst: 0,
      #     Timelapse: 1,
      #     NightLapse: 2
      def mode(mode, submode=0)
        self.class.get("/gp/gpControl/command/sub_mode?mode=#{mode}&sub_mode=#{submode}")
      end
    end
  end
end