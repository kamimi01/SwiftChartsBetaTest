//
//  ToyShape.swift
//  SwiftChartsBetaTest
//
//  Created by Mika Urakawa on 2022/06/12.
//

import Foundation

struct ToyShape: Identifiable {
    var color: Color
    var type: `Type`
    var count: Double
    var id = UUID()

    enum Color: String {
        case green = "緑"
        case purple = "紫"
        case pink = "ピンク"
        case yellow = "黄色"
    }

    enum `Type`: String {
        case cube = "四角形"
        case sphere = "球体"
        case pyramid = "ピラミッド"
    }
}
