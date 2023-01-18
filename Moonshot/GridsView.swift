//
//  GridsView.swift
//  Moonshot
//
//  Created by Denny Arfansyah on 18/01/23.
//

import SwiftUI

struct GridsView: View {
    let layout = [ GridItem(.adaptive(minimum: 80, maximum: 120))]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct GridsView_Previews: PreviewProvider {
    static var previews: some View {
        GridsView()
    }
}
