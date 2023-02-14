//
//  LocationManager.swift
//  Za Hunter
//
//  Created by Quinn Kozak on 2/14/23.
//

import Foundation
import CoreLocation

class LocationManager:NSObject,CLLocationManagerDelegate,ObservableObject {
    var locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
