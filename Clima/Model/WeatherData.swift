//
//  WeatherData.swift
//  Clima
//
//  Created by IT-HW05011-00224 on 25/1/2567 BE.
//  Copyright © 2567 BE App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}
