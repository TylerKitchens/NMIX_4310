//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Tyler Kitchens on 2/3/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris enim nisi, posuere vel ligula facilisis, consequat aliquet augue. Quisque quis venenatis ipsum. In eget laoreet felis. Nam condimentum, est vel feugiat sodales, lacus purus luctus ex, at malesuada lacus elit in ante. Donec sit amet eros ligula. Integer imperdiet maximus sapien, non iaculis mauris varius vitae. Praesent rutrum eleifend viverra. Sed magna nisl, placerat viverra elit rutrum, imperdiet varius augue. Quisque dictum lacinia nibh vel pulvinar.")
        .fontWeight(.bold)
        .font(.title)
        .foregroundColor(.gray)
            .multilineTextAlignment(.center)
        .lineSpacing(10)
        .padding()
        .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
        .shadow(color: .gray, radius: 2, x: 0, y: 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
