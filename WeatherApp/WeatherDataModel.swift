//
//  WeatherDataModel.swift
//  WeatherApp
//
//  Created by ERP on 10/09/2023.
//

import Foundation
import SwiftUI

struct WeatherDataModel {
    
    var day: String
    var temprature: Int
    var imageName: String
    
    static func getWeatherData() -> [WeatherDataModel] {
        
        return [
            WeatherDataModel(day: "TU", temprature: 33, imageName: "sun.max.fill"),
            WeatherDataModel(day: "WED", temprature: 28, imageName: "cloud.sun.fill"),
            WeatherDataModel(day: "THU", temprature: 26, imageName: "sunset.fill"),
            WeatherDataModel(day: "FRI", temprature: 25, imageName: "wind"),
            WeatherDataModel(day: "SAT", temprature: 23, imageName: "moon.stars.fill")
            ]
    }
}
