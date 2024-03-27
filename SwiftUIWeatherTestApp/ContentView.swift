//
//  ContentView.swift
//  SwiftUIWeatherTestApp
//
//  Created by Oleksandr Isaiev on 21.03.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var isNight = false

    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)

            VStack {
                CityTextView(cityName: "Cupertino, CA")

                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)

                HStack(spacing: 20){
                    ForEach(DayModel.examples, id: \.dayOfWeek) { dayModel in
                        WeatherDayView(dayModel: dayModel)
                    }
                }
                Spacer()

                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {

    var dayModel: DayModel

    var body: some View {
        VStack {
            Text(dayModel.dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: dayModel.imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.indigo, .yellow, .orange)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(dayModel.temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool

    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()

        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {

    var cityName: String

    var body: some View {
        Text("Cupertino, CA")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {

    var imageName: String
    var temperature: Int

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}
