//
//  Order.swift
//  OrderApp
//
//  Created by Yusuke K on 2022-05-21.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
