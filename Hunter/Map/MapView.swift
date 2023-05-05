import SwiftUI
import MapKit
import Combine

struct MapView: UIViewRepresentable {
    @Binding var sites: [HuntModel.Site]
        
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.setRegion(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 44.7288,
                    longitude: -85.7269
                ),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.004,
                    longitudeDelta: 0.004
                )
            ), animated: true)
        mapView.preferredConfiguration = MKImageryMapConfiguration()
        sites.forEach { site in
            let annotation = MKPointAnnotation()
            annotation.coordinate = site.coordinate
            annotation.title = site.name
            mapView.addAnnotation(annotation)
        }
        return mapView
    }
    
    func updateUIView(_ mapView: MKMapView, context: Context) {
        
    }
}
