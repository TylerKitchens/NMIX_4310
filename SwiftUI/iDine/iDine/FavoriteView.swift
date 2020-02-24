//
//  FavoriteView.swift
//  iDine
//
//  Created by Tyler Kitchens on 2/24/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favorite: Favorite
   var body: some View {
        NavigationView {
            List {
                Section{
                    ForEach(favorite.items){ item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                    }.onDelete(perform: deleteItems)
                }
                
            }
        .navigationBarTitle("Favorites")
        .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton())
        }
    }
    func deleteItems(at offsets: IndexSet){
        favorite.items.remove(atOffsets: offsets)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    let favorite = Favorite()
    static var previews: some View {
        FavoriteView()
    }
}
