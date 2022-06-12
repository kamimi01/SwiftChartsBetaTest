//
//  LineChart.swift
//  SwiftChartsBetaTest
//
//  Created by Mika Urakawa on 2022/06/12.
//

import SwiftUI
import Charts

struct LineChartView: View {
    private var data: [NoteStatics] = [
        .init(term: "1/13-2/12", numOfViews: 960),
        .init(term: "2/13-3/12", numOfViews: 1162),
        .init(term: "3/13-4/12", numOfViews: 2096),
        .init(term: "4/13-5/12", numOfViews: 1875)
    ]

    var body: some View {
        Chart(data) {
            LineMark(
                x: .value("期間（月）", $0.term),
                y: .value("ビュー数", $0.numOfViews)
            )
        }
    }
}

struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView()
    }
}
