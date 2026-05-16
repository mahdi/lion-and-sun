# Lion and Sun

Lion and Sun is a simple standalone Apple Watch app for watchOS 10+.

The app shows the Lion and Sun emblem with the phrase `Javid Shah!`, and includes WidgetKit complications for modern watch faces. The emblem is also used as the app icon.

## About The Emblem

The Lion and Sun is a historic Persian and Iranian emblem. It was a central element of Iran's national flag before 1979 and has appeared across Iranian art, heraldry, flags, coins, and state symbolism in different forms over time.

For background on the symbol, see [Lion and Sun on Wikipedia](https://en.wikipedia.org/wiki/Lion_and_Sun).

## Features

- Standalone watchOS SwiftUI app.
- Main screen with the Lion and Sun emblem and `Javid Shah!`.
- App icon generated from the emblem.
- WidgetKit complication extension.
- Supported complication families:
  - `accessoryCircular`
  - `accessoryRectangular`
  - `accessoryInline`
  - `accessoryCorner`
- Static timeline because the displayed content does not change.

## Requirements

- Xcode 26.5 or newer.
- watchOS 10.0 or newer deployment target.
- Apple Watch or watchOS Simulator.

## Build And Run

Open `LionAndSun.xcodeproj` in Xcode, select the `LionAndSun` scheme, choose a watchOS simulator or paired Apple Watch, then run the app.

For a physical Apple Watch, make sure Developer Mode is enabled on both the iPhone and Apple Watch, both devices are trusted, and Xcode can connect to the watch as a run destination.

## Complications

After installing the app, edit a compatible watch face and choose `Lion and Sun` for the available complication slots.

Good faces for testing include:

- Modular Duo or Modular Ultra for rectangular complications.
- Infograph-style faces for circular and corner complications.

Small complication families show the emblem only. Rectangular and inline families show `Javid Shah!` when there is enough space.

## Project Structure

- `LionAndSun/`: SwiftUI watch app target.
- `LionAndSunComplications/`: WidgetKit complication extension.
- `Assets/`: Source emblem artwork.
- `openspec/`: OpenSpec project context and bootstrap specification.

## Artwork

The source Lion and Sun artwork is from [Flag of Iran](https://flagofiran.com/). A local copy is stored in `Assets/` and packaged into Xcode asset catalogs for the app and complication extension.
