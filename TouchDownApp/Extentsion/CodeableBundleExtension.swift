//
//  CodeableBundleExtension.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/26/21.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1 locare json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to loacate file \(file) in bundle")
        }
        // 2 create a propertiy for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file \(file) from bundle")
        }
        // 3 create a decoder
        let decoder = JSONDecoder()
        // 4 create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode file \(file) from bundle")
        }
        // 5 return the ready to use date
        return decodedData
    }
}
