//
//  ItemDetail.swift
//  iDine
//
//  Created by Tyler Kitchens on 2/24/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    @EnvironmentObject var order: Order
    @EnvironmentObject var favorite: Favorite
    var body: some View {
        VStack{
            
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                Text("Phote: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
                
            }
            Text(item.description)
                .padding()
            Button("Order This"){
                self.order.add(item: self.item)
            }
            .font(.title)
            .padding()
            .background(Color.blue)
            .cornerRadius(40)
            .foregroundColor(.white)
            Button("Favorite"){
                self.favorite.add(item: self.item)
            }
        
            
            Spacer()
            
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    static let favorite = Favorite()
    
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example)
        }
        
    }
}
