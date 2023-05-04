import Foundation
import CoreLocation

struct HuntModel: Identifiable {
    let id: UUID
    var name: String
    var sites: [Site]
    
    init(id: UUID = UUID(), name: String, sites: [Site]) {
        self.id = id
        self.name = name
        self.sites = sites
    }
}

extension HuntModel {
    struct Site: Identifiable {
        let id: UUID
        var name: String
        var coordinate: CLLocationCoordinate2D
        
        init(id: UUID = UUID(), name: String = "", latitude: Double, longitude: Double) {
            self.id = id
            self.name = name
            self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }
}

extension HuntModel {
    static let sampleData: [HuntModel] =
    [
        HuntModel(name: "Disc Golf Course", sites: [
            Site(name: "1", latitude: 44.728596, longitude: -85.727765),
            Site(name: "2", latitude: 44.727403, longitude: -85.727765),
            Site(name: "3", latitude: 44.726579, longitude: -85.728653),
            Site(name: "4", latitude: 44.726399, longitude: -85.727698),
            Site(name: "5", latitude: 44.727432, longitude: -85.726104),
            Site(name: "6", latitude: 44.728670, longitude: -85.725091),
            Site(name: "7", latitude: 44.728670, longitude: -85.726205),
            Site(name: "8", latitude: 44.730046, longitude: -85.726085),
            Site(name: "9", latitude: 44.730982, longitude: -85.726012),
            Site(name: "10", latitude: 44.730801, longitude: -85.727321),
        ]),
        HuntModel(name: "Easter 2023", sites: [
            Site(latitude: 45.5, longitude: -81.0),
            Site(latitude: 45.6, longitude: -81.1),
            Site(latitude: 45.7, longitude: -81.3),
            Site(latitude: 45.8, longitude: -81.5),
        ]),
    ]
}
