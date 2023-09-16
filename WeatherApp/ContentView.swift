//
//  ContentView.swift
//  WeatherApp
//
//  Created by ERP on 07/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var title1: String = "Mumbai"
    @State var title2: String = "Delhi"
    @State var title3: String = "Channai"
    @State var title4: String = "Kolkata"
    
    var body: some View {
        TabView {
            WeatherView(titleString: $title1)
                .tabItem {
                    Label("Mumbai", systemImage: "house")
                }
            WeatherView(titleString: $title2)
                .tabItem {
                    Label("Delhi", systemImage: "network.badge.shield.half.filled")
                }
            WeatherView(titleString: $title3)
                .tabItem {
                    Label("Channai", systemImage: "airplane.departure")
                }
            WeatherView(titleString: $title4)
                .tabItem {
                    Label("Kolkata", systemImage: "lightrail")
                }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var tempature: Int
    
    var body: some View {
        HStack {
            VStack {
                Text("\(dayOfWeek)").font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Image(systemName: "\(imageName)")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                Text("\(tempature)°")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
            }
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("28°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
