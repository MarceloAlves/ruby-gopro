class Gopro
  module Modules
    module Media
      # List all media currently on the GoPro
      def list_media
        self.class.get("/gp/gpMediaList")
      end

      # Delete last media
      def delete_last_media
        self.class.get("/gp/gpControl/command/storage/delete/last")
      end

      # Delete all media
      def delete_all_media
        self.class.get("/gp/gpControl/command/storage/delete/all")
      end
    end
  end
end