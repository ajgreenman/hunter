import SwiftUI

struct HunterButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.black)
            .background(.orange.opacity(0.4))
            .cornerRadius(8)
    }
}
