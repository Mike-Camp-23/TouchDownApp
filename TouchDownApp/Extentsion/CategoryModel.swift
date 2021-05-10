//
//  CatagoryModel.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/28/21.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
