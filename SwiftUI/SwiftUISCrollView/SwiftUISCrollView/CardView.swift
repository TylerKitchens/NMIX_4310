//
//  CardView.swift
//  SwiftUISCrollView
//
//  Created by Tyler Kitchens on 2/3/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            
        
        Image("swiftui-button")
        .resizable()
        .aspectRatio(contentMode:  .fit)
        
            HStack {
                VStack(alignment: .leading) {
                Text("SwiftUI")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("Drawing A Border with Rounded Corners").font(.title).fontWeight(.black).foregroundColor( .primary).lineLimit(3)
                
                Text("Written by Simon Ng".uppercased()).font(.caption).foregroundColor(.secondary)
                }.layoutPriority(100)
                Spacer()
            }
        .padding()
            
        }.cornerRadius(10).overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
            )
            .padding([.top, .horizontal])
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
