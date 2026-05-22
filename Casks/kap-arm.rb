cask "kap-arm" do
  version :latest
  sha256 :no_check

  url "https://github.com/ben-elliot-nice/kap/releases/latest/download/Kap-arm64.dmg"
  name "Kap (Apple Silicon)"
  desc "Open-source screen recorder built with web technology"
  homepage "https://getkap.co/"

  auto_updates false
  depends_on macos: ">= :catalina"

  app "Kap.app"

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Caches/com.wulkano.kap",
    "~/Library/Caches/com.wulkano.kap.ShipIt",
    "~/Library/Cookies/com.wulkano.kap.binarycookies",
    "~/Library/Preferences/com.wulkano.kap.helper.plist",
    "~/Library/Preferences/com.wulkano.kap.plist",
    "~/Library/Saved Application State/com.wulkano.kap.savedState",
  ]
end
