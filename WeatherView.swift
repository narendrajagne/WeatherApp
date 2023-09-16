//
//  WeatherView.swift
//  WeatherApp
//
//  Created by ERP on 10/09/2023.
//

import Foundation
import SwiftUI

struct WeatherView: View {
    
    @StateObject var weatherViewModel: WeatherVewModel = WeatherVewModel()
    @State private var isNight = false
    @Binding var titleString: String
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack(spacing: 1) {
                CityTextView(cityName: titleString)
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .padding(.bottom, 40)
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: weatherViewModel.getWeatherData()[0].day, imageName: "\(weatherViewModel.getWeatherData()[0].imageName)", tempature: weatherViewModel.getWeatherData()[0].temprature)
                    WeatherDayView(dayOfWeek: weatherViewModel.getWeatherData()[1].day, imageName: "\(weatherViewModel.getWeatherData()[1].imageName)", tempature: weatherViewModel.getWeatherData()[1].temprature)
                    WeatherDayView(dayOfWeek: weatherViewModel.getWeatherData()[2].day, imageName: "\(weatherViewModel.getWeatherData()[2].imageName)", tempature: weatherViewModel.getWeatherData()[2].temprature)
                    WeatherDayView(dayOfWeek: weatherViewModel.getWeatherData()[3].day, imageName: "\(weatherViewModel.getWeatherData()[3].imageName)", tempature: weatherViewModel.getWeatherData()[3].temprature)
                    WeatherDayView(dayOfWeek: weatherViewModel.getWeatherData()[4].day, imageName: "\(weatherViewModel.getWeatherData()[4].imageName)", tempature: weatherViewModel.getWeatherData()[4].temprature)
                }
                Spacer()
                WeatherButton(title:"Change Day Time" , backgroundColor: .white, foregroundColor: .blue, isNight: $isNight)
            }
        }
    }
}
