//
//  WeatherData.swift
//  WeatherManager
//
//  Created by Sarper Kececi on 20.12.2023.
//

import Foundation

struct WeatherModel: Codable {
    
    var coord: Coordinate
    var weather: [WeatherInfo]
    var main: MainInfo
    var id: Int
    var name: String
}
    
    struct Coordinate: Codable {
        var lon: Double
        var lat: Double
    }

    struct WeatherInfo: Codable {
        var id: Int
        var main: String
        var description: String
        var icon: String
    }

    struct MainInfo: Codable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Int
        var humidity: Int
    }

    struct WindInfo: Codable {
        var speed: Double
        var deg: Int
    }

    struct CloudInfo: Codable {
        var all: Int
    }

    struct SystemInfo: Codable {
        var type: Int
        var id: Int
        var country: String
        var sunrise: Int
        var sunset: Int
    }

   
   


