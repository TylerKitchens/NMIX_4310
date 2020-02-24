//
//  AppView.swift
//  iDine
//
//  Created by Tyler Kitchens on 2/24/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
            }
        
            OrderView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
            }
            
            FavoriteView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }
        }
        }
    }
    
    struct AppView_Previews: PreviewProvider {
        static let order = Order()
        
        static var previews: some View {
            AppView().environmentObject(order)
        }
}
