//
//  DayModel.swift
//  SwiftUIWeatherTestApp
//
//  Created by Oleksandr Isaiev on 22.03.2024.
//

import Foundation

struct DayModel {
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}

extension DayModel {
    static var examples: [DayModel] {
        [
            DayModel(dayOfWeek: "TUE",
                     imageName: "sun.max.fill",
                     temperature: 74),
            DayModel(dayOfWeek: "WED",
                     imageName: "cloud.sun.fill",
                     temperature: 56),
            DayModel(dayOfWeek: "THU",
                     imageName: "sun.rain.fill",
                     temperature: 67),
            DayModel(dayOfWeek: "FRI",
                     imageName: "cloud.bolt.fill",
                     temperature: 47),
            DayModel(dayOfWeek: "SAT",
                     imageName: "wind",
                     temperature: 55)
        ]
    }
}
