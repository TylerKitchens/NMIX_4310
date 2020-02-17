//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Tyler Kitchens on 2/17/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button(action: {
            print("Delete Button Tapped!")
        }){
            HStack{
                Image(systemName: "trash").font(.title)
                Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
           
                
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
