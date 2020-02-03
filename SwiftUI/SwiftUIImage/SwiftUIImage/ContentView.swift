//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Tyler Kitchens on 2/3/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        //these are fonts, like FA so style them like text
        Image("paris") .resizable()
        .aspectRatio(contentMode: .fit) .frame(width: 300)
        .overlay(
        Rectangle() .foregroundColor(.black) .opacity(0.4)
        .overlay(
        
        Text("Paris") .font(.largeTitle) .fontWeight(.black) .foregroundColor(.white) .frame(width: 200)
        )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
