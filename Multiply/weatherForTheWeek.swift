//
//  weatherForTheWeek.swift
//  Multiply
//
//  Created by Yuriy Khudyk on 10/23/22.
//

import Foundation

struct weatherForTheWeek : Identifiable, Decodable {
    let id: Int
    let day: String
    let weatherImage: String
    let degrees: Double
}
