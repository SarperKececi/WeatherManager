//
//  LocationManager.swift
//  WeatherManager
//
//  Created by Sarper Kececi on 19.12.2023.
//

import Foundation
import CoreLocation

class LocationManager : NSObject , ObservableObject , CLLocationManagerDelegate {
    @Published var location : CLLocationCoordinate2D?
    @Published var isLoading : Bool = false
    
    let manager = CLLocationManager()
    
    override init() {
        super.init() 
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error Location , \(error.localizedDescription)")
        isLoading = false
    }
}
