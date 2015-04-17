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
        self.class.get("/gp/gpControl/status")['status'].each_with_object({}) do |(k,v),hash|
          hash[STATUS[k]] = v
        end
      end

      private

      STATUS = {
        "1" => "internal_battery_present",
        "2" => "internal_battery_level",
        "3" => "external_battery_present",
        "4" => "external_battery_level",
        "5" => "current_temperature",
        "6" => "system_hot",
        "8" => "system_busy",
        "9" => "quick_capture_active",
        "10" => "encoding_active",
        "11" => "lcd_lock_active",
        "12" => "xmode",
        "13" => "video_progress_counter",
        "14" => "broadcast_progress_counter",
        "15" => "broadcast_viewers_count",
        "16" => "broadcast_bstatus",
        "17" => "wireless_enable",
        "18" => "wireless_scan_current_time",
        "19" => "wireless_pair_state",
        "20" => "wireless_pair_type",
        "22" => "wireless_scan_state",
        "23" => "wireless_scan_time",
        "24" => "wireless_provision_status",
        "25" => "wireless_rssi_bars",
        "26" => "wireless_remove_control_version",
        "27" => "wireless_remove_control_connected",
        "28" => "wireless_pairing",
        "29" => "wireless_wlan_ssid",
        "30" => "wireless_ap_ssid",
        "31" => "wireless_app_count",
        "33" => "sd_status",
        "34" => "remaining_photos",
        "35" => "remaining_video_time",
        "36" => "num_group_photos",
        "37" => "num_group_videos",
        "38" => "num_total_photos",
        "39" => "num_total_videos",
        "40" => "date_time",
        "41" => "fw_update_ota_status",
        "42" => "fw_update_download_cancel_request_pending",
        "43" => "mode",
        "44" => "sub_mode",
        "45" => "camera_locate_active",
        "46" => "video_protune_default",
        "47" => "photo_protune_default",
        "48" => "multi_shot_protune_default",
        "49" => "multi_shot_count_down"
      }
    end
  end
end