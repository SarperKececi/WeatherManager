//
//  WelcomeView.swift
//  WeatherManager
//
//  Created by Sarper Kececi on 19.12.2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack {
            VStack(spacing : 20) {
                Text("Welcome Weather App")
                    .bold()
                    .font(.title)
                Text("please share your location with us")
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(10)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
            
        }
        .frame(maxWidth : .infinity , maxHeight: .infinity)
   
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
