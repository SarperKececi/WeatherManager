//
//  WeatherManager.swift
//  WeatherManager
//
//  Created by Sarper Kececi on 20.12.2023.
//

import Foundation
import CoreLocation
import Alamofire

class WeatherManager: ObservableObject {
    @Published var weatherData: WeatherModel?
    private let apiKey: String = "8e1d840cd9128203bb9cf75ed179a9a6"
    
    func getWeatherData(latitude: Double, longitude: Double, completion: @escaping (Result<WeatherModel, Error>) -> Void) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)"
        
        AF.request(urlString).responseDecodable(of: WeatherModel.self) { response in
            switch response.result {
            case .success(let data):
                self.weatherData = data
                completion(.success(data))
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}

