import SwiftUI
import MapKit
import CoreLocationUI

struct HuntDetailView: View {
    @Binding var hunt: HuntModel
    @State var mapType = 0
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your location: \(location.latitude), \(location.longitude)")
            }
            LocationButton {
                locationManager.requestLocation()
            }
            MapView(sites: $hunt.sites)
                //.edgesIgnoringSafeArea(.all)
        }
    }
}

struct HuntDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HuntDetailView(hunt: .constant(HuntModel.sampleData[0]))
    }
}
