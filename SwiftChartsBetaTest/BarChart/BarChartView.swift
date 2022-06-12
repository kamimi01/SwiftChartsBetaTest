//
//  BarChart.swift
//  SwiftChartsBetaTest
//
//  Created by Mika Urakawa on 2022/06/12.
//

import SwiftUI
import Charts

struct BarChartView: View {
    private var data: [ToyShape] = [
        .init(color: .green, type: .cube, count: 2),
        .init(color: .green, type: .sphere, count: 0),
        .init(color: .green, type: .pyramid, count: 1),
        .init(color: .purple, type: .cube, count: 1),
        .init(color: .purple, type: .sphere, count: 1),
        .init(color: .purple, type: .pyramid, count: 1),
        .init(color: .pink, type: .cube, count: 1),
        .init(color: .pink, type: .sphere, count: 2),
        .init(color: .pink, type: .pyramid, count: 0),
        .init(color: .yellow, type: .cube, count: 1),
        .init(color: .yellow, type: .sphere, count: 1),
        .init(color: .yellow, type: .pyramid, count: 2)
    ]

    var body: some View {
        Chart {
            ForEach(data) { shape in
                BarMark(
                    x: .value("形状", shape.type.rawValue),
                    y: .value("総数", shape.count)
                )
                .foregroundStyle(by: .value("形状", shape.color.rawValue))
            }
        }
        .chartForegroundStyleScale([
            ToyShape.Color.green.rawValue: .green,
            ToyShape.Color.purple.rawValue: .purple,
            ToyShape.Color.pink.rawValue: .pink,
            ToyShape.Color.yellow.rawValue: .yellow,
        ])
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
