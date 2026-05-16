# Project Context

## Purpose

Lion and Sun is a standalone Apple Watch app that displays the Lion and Sun emblem with the phrase `Javid Shah!`.

## Platform

- Native watchOS 10+ app.
- SwiftUI for the watch app interface.
- WidgetKit for watch complications.
- No iPhone companion UI in the first version.

## Product Constraints

- The app has no backend, accounts, analytics, or user data storage.
- The emblem is static app artwork sourced from `https://flagofiran.com/files/lion-and-sun/lion-and-sun.svg`.
- The phrase `Javid Shah!` is the canonical text in the app and roomy complications.

## Engineering Conventions

- Keep shared visual behavior simple and static.
- Prefer WidgetKit accessory families over deprecated ClockKit APIs.
- Complications must remain recognizable at small Apple Watch sizes.
