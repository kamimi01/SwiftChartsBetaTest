//
//  Insect.swift
//  SwiftChartsBetaTest
//
//  Created by Mika Urakawa on 2022/06/13.
//

import Foundation

struct Insect: Identifiable {
    let name: String
    let family: String
    let wingLength: Double
    let wingWidth: Double
    let weight: Double
    let id = UUID()
}
