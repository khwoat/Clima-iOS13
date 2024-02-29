//
//  WeatherModel.swift
//  Clima
//
//  Created by IT-HW05011-00224 on 26/1/2567 BE.
//  Copyright © 2567 BE App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        return switch conditionId {
        case 200...232: "cloud.bolt"
        case 300...321: "cloud.drizzle"
        case 500...504: "cloud.rain"
        case 511: "snow"
        case 520...531: "cloud.snow"
        case 600...622: "snow"
        case 701...781: "cloud.fog"
        case 800: "sun.max"
        case 801...804: "cloud.sun"
        default:
            "unknown"
        }
    }
}
