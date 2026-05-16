import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.black
                    .ignoresSafeArea()

                VStack(spacing: 8) {
                    Image("LionSunEmblem")
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width: min(proxy.size.width * 0.78, 150),
                            height: min(proxy.size.height * 0.62, 150)
                        )
                        .accessibilityHidden(true)

                    Text("Javid Shah!")
                        .font(.system(.headline, design: .serif, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.72)
                        .lineLimit(1)
                        .foregroundStyle(.white)
                        .accessibilityLabel("Javid Shah!")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    ContentView()
}
