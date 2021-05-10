//
//  Shop.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/30/21.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil

}
