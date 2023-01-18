//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Denny Arfansyah on 18/01/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) form bundle")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) form bundle")
        }
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) form bundle")
        }
        
        return loaded
    }
}
