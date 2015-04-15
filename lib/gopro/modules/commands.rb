class Gopro
  module Modules
    module Commands
      # Start capture using current mode
      def start_capture
        self.class.get("/gp/gpControl/command/shutter?p=1")
      end

      # Stop capturing using current mode
      def stop_capture
        self.class.get("/gp/gpControl/command/shutter?p=0")
      end

      # Current GoPro Status
      def status
        self.class.get("/gp/gpControl/status")
      end
    end
  end
end