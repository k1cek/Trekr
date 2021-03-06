//
//  WorldView.swift
//  Trekr
//
//  Created by Lukasz Zajac on 22/12/2020.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region) // two way banding
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
