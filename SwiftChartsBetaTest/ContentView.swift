//
//  ContentView.swift
//  SwiftChartsBetaTest
//
//  Created by Mika Urakawa on 2022/06/12.
//

import SwiftUI
import Charts

struct ContentView: View {
    enum ChartType: String, CaseIterable {
        case bar = "棒グラフ"
        case line = "折れ線グラフ"
        case point = "散布図"
    }

    @State private var selectedType = ChartType.bar

    var body: some View {
        VStack {
            Picker("", selection: $selectedType) {
                ForEach(ChartType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                }
            }
            .pickerStyle(.segmented)

            charView(type: selectedType)
        }
    }
}

extension ContentView {
    private func charView(type: ChartType) -> AnyView {
        switch type {
        case .bar: return AnyView(BarChartView())
        case .line: return AnyView(LineChartView())
        case .point: return AnyView(PointChartView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
