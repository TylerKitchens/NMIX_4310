//
//  ContentView.swift
//  Shapes
//
//  Created by Tyler Kitchens on 2/17/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addQuadCurve(to: CGPoint(x: 200, y: 0), control: CGPoint(x: 100, y: -20))
            path.addLine(to: CGPoint(x: 200, y: 40))
            path.addLine(to: CGPoint(x: 200, y: 40))
            path.addLine(to: CGPoint(x: 0, y: 40))
        }
        .fill(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
