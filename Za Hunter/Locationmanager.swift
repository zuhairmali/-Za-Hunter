//
//  Locationmanager.swift
//  Za Hunter
//
//  Created by Student on 4/26/21.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject{
    var locationManager = CLLocationManager()

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
