import SwiftUI
import WidgetKit

struct LionAndSunEntry: TimelineEntry {
    let date: Date
}

struct LionAndSunProvider: TimelineProvider {
    func placeholder(in context: Context) -> LionAndSunEntry {
        LionAndSunEntry(date: .now)
    }

    func getSnapshot(in context: Context, completion: @escaping (LionAndSunEntry) -> Void) {
        completion(LionAndSunEntry(date: .now))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<LionAndSunEntry>) -> Void) {
        let entry = LionAndSunEntry(date: .now)
        completion(Timeline(entries: [entry], policy: .never))
    }
}

struct LionAndSunComplication: Widget {
    let kind = "LionAndSunComplication"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: LionAndSunProvider()) { entry in
            LionAndSunComplicationView(entry: entry)
                .containerBackground(.background, for: .widget)
                .unredacted()
        }
        .configurationDisplayName("Lion and Sun")
        .description("Shows the Lion and Sun emblem with Javid Shah where space allows.")
        .supportedFamilies([
            .accessoryCircular,
            .accessoryRectangular,
            .accessoryInline,
            .accessoryCorner
        ])
    }
}

struct LionAndSunComplicationView: View {
    @Environment(\.widgetFamily) private var family

    let entry: LionAndSunEntry

    var body: some View {
        switch family {
        case .accessoryCircular:
            ZStack {
                AccessoryWidgetBackground()
                emblemOnly
            }
        case .accessoryCorner:
            ZStack {
                AccessoryWidgetBackground()
                emblemOnly
            }
                .widgetLabel {
                    Text("Javid Shah!")
                }
        case .accessoryInline:
            Text("Javid Shah!")
                .foregroundStyle(.primary)
        case .accessoryRectangular:
            HStack(spacing: 7) {
                Image("LionSunEmblem")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)

                Text("Javid Shah!")
                    .font(.system(.headline, design: .serif, weight: .semibold))
                    .minimumScaleFactor(0.68)
                    .lineLimit(1)
            }
            .foregroundStyle(.primary)
        default:
            emblemOnly
        }
    }

    private var emblemOnly: some View {
        Image("LionSunEmblem")
            .resizable()
            .scaledToFit()
            .padding(2)
    }
}

#Preview(as: .accessoryRectangular) {
    LionAndSunComplication()
} timeline: {
    LionAndSunEntry(date: .now)
}
