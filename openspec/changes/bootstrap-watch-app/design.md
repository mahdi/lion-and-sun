# Design

## Overview

The app is a standalone watchOS SwiftUI project with two targets:

- `LionAndSun`: the watch app.
- `LionAndSunComplications`: a WidgetKit extension embedded in the watch app.

Both targets include the same bundled emblem PNG resource. The content is static, so the WidgetKit provider returns a single long-lived timeline entry.

## App UI

The app uses a single SwiftUI `ContentView` with a neutral dark background, a centered scalable emblem, and the exact text `Javid Shah!`. The layout uses watch-friendly spacing and scales the emblem to avoid clipping on smaller watch displays.

## Complications

The extension declares these supported WidgetKit families:

- `accessoryCircular`: emblem only.
- `accessoryCorner`: emblem only.
- `accessoryInline`: text `Javid Shah!` with a small emblem where the system renders the image.
- `accessoryRectangular`: emblem plus `Javid Shah!`.

The view branches by `widgetFamily` and uses SwiftUI/widget rendering modifiers so watch faces can render full-color or tinted variants according to the active face.

## Asset Handling

The PNG is stored in each target's asset catalog as `LionSunEmblem` so SwiftUI and WidgetKit can load it with `Image("LionSunEmblem")`. The source SVG is preserved at `Assets/lion-and-sun.svg` for provenance.
