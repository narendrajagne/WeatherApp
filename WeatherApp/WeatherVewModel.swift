//
//  WeatherVewModel.swift
//  WeatherApp
//
//  Created by ERP on 10/09/2023.
//

import Foundation

final class WeatherVewModel: ObservableObject {
    
    
    func getWeatherData() -> [WeatherDataModel] {
        return WeatherDataModel.getWeatherData()
    }
}
