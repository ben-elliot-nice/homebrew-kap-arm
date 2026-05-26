cask "kap-arm" do
  version "3.7.0"
  sha256 "26b8980a37859de4238f10262eabd7faedcb0c2dfc265fe2968a751bb7ffd11d"

  url "https://github.com/ben-elliot-nice/kap/releases/download/v3.7.0/Kap-arm64.dmg"
  name "Kap (Apple Silicon)"
  desc "Open-source screen recorder built with web technology"
  homepage "https://getkap.co/"

  auto_updates false
  depends_on macos: ">= :catalina"

  app "Kap.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "#{appdir}/Kap.app"],
      sudo: false,
      print_stderr: false
  end

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
