import SwiftUI
import MapKit

struct HuntDetailView: View {
    @Binding var hunt: HuntModel
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 44.7288,
            longitude: -85.7269
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.004,
            longitudeDelta: 0.004
        )
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: hunt.sites) { site in
            MapMarker(coordinate: site.coordinate, tint: .orange)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HuntDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HuntDetailView(hunt: .constant(HuntModel.sampleData[0]))
    }
}
