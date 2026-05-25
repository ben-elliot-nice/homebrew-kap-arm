cask "kap-arm" do
  version "3.7.0"
  sha256 "23d083ab814db77f41268e9a6713ae1f714e8aadf2ad6b7f02208940ff6dc7c1"

  url "https://github.com/ben-elliot-nice/kap/releases/download/v3.7.0/Kap-arm64.dmg"
  name "Kap (Apple Silicon)"
  desc "Open-source screen recorder built with web technology"
  homepage "https://getkap.co/"

  auto_updates false
  depends_on macos: ">= :catalina"

  app "Kap.app"
  disable_quarantine true

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
