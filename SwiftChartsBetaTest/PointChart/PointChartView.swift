//
//  PointChartView.swift
//  SwiftChartsBetaTest
//
//  Created by Mika Urakawa on 2022/06/13.
//

import SwiftUI
import Charts

struct PointChartView: View {
    private var data: [Insect] = [
        .init(name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
        .init(name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
        .init(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18)
    ]

    var body: some View {
        Chart(data) {
            PointMark(
                x: .value("羽の枚数", $0.wingLength),
                y: .value("羽の横幅", $0.wingWidth)
            )
        }
    }
}

struct PointChartView_Previews: PreviewProvider {
    static var previews: some View {
        PointChartView()
    }
}
