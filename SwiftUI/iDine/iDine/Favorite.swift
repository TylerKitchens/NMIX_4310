//
//  Favorite.swift
//  iDine
//
//  Created by Tyler Kitchens on 2/24/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import Foundation
class Favorite: ObservableObject{
   @Published var items = [MenuItem]()

    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
