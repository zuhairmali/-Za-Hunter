//
//  ContentView.swift
//  Za Hunter
//
//  Created by Student on 4/26/21.
//

import SwiftUI
import MapKit


struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.15704,
            longitude: -88.14812),
        span: MKCoordinateSpan(
            latitudeDelta: 0.05,
            longitudeDelta: 0.05))
    var body: some View {
        Map(
            coordinateRegion: $region,
            interactionModes: .all,
            showsUserLocation: true,
            userTrackingMode: $userTrackingMode
        )
    }
  }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
