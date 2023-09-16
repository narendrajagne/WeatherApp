//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by ERP on 07/09/2023.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var backgroundColor: Color
    var foregroundColor: Color
    @Binding var isNight: Bool
    
    var body: some View {
        Button {
            isNight.toggle()
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
        }
        Spacer()
    }
}
