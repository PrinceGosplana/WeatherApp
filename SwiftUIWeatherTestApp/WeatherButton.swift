//
//  WeatherButton.swift
//  SwiftUIWeatherTestApp
//
//  Created by Oleksandr Isaiev on 22.03.2024.
//

import SwiftUI

struct WeatherButton: View {

    var title: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    WeatherButton(title: "Test title",
                  textColor: .white,
                  backgroundColor: .blue)
}
