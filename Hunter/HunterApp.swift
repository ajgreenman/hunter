import SwiftUI

@main
struct HunterApp: App {
    @State private var hunts = HuntModel.sampleData
    
    var body: some Scene {
        WindowGroup {
            HuntsListView(hunts: $hunts)
        }
    }
}
