# homebrew-kap-arm

Homebrew tap for [Kap](https://getkap.co/) — Apple Silicon (arm64) build.

The official Kap release has been unmaintained since 2022 and bundles Intel-only native dependencies. This tap provides a native arm64 build that eliminates the "Support Ending for Intel-Based Apps" warning on macOS.

**Source:** [ben-elliot-nice/kap](https://github.com/ben-elliot-nice/kap)

## Install

```sh
brew tap ben-elliot-nice/kap-arm
brew install --cask kap-arm
```

## Notes

This build is unsigned. macOS will block it on first launch — right-click the app and choose **Open** to approve it, or go to **System Settings → Privacy & Security** and click **Open Anyway**.

After granting screen recording permission in System Settings, Kap works normally.
