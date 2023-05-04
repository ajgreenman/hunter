import SwiftUI
import MapKit

struct HuntDetailView: View {
    @Binding var hunt: HuntModel
    @ObservedObject var mapSettings = MapSettings()
    @State var mapType = 0
    
    var body: some View {
        MapView(sites: $hunt.sites)
            .edgesIgnoringSafeArea(.all)
            .environmentObject(mapSettings)
    }
}

struct HuntDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HuntDetailView(hunt: .constant(HuntModel.sampleData[0]))
    }
}
