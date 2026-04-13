# ApartmentHelper iOS App

This repository now includes an Xcode-ready iPhone app that wraps your live Vercel website in a native shell using `WKWebView`.

## Open In Xcode

1. Open `ApartmentHelper.xcodeproj`.
2. Select an iPhone simulator.
3. Press Run.

## Current Website URL

The app is currently pointed at:

```swift
static let websiteURL = URL(string: "https://apartment-helper-drab.vercel.app")!
```

If you move the site to a custom domain later, update `ApartmentHelper/AppConfig.swift`.

This app is already structured so we can add branding, splash assets, offline handling, push notifications, and App Store-ready polish next.
