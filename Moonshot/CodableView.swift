//
//  CodableView.swift
//  Moonshot
//
//  Created by Denny Arfansyah on 18/01/23.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let number: String
}

struct CodableView: View {
    var body: some View {
        Button("Decoder JSON") {
            let input = """
            {
                "name": "Denny",
                "address" : {
                    "street": "Petamburan Avenue",
                    "number": "22"
                }
            }
            """
            let data = Data(input.utf8)
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct CodableView_Previews: PreviewProvider {
    static var previews: some View {
        CodableView()
    }
}
