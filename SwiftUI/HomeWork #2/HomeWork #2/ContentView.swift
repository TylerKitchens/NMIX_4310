//
//  ContentView.swift
//  HomeWork #2
//
//  Created by Tyler Kitchens on 2/17/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees: Double = 90
    var body: some View {
        VStack{
            Path { path in
                      path.move(to: CGPoint(x: 200, y: 200))
                      path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: degrees), clockwise: true)
                  }
                  .fill(Color.green)
            Text("\(Int(degrees))")
            Slider(value: $degrees, in: 0...360, step: 1).padding()
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
