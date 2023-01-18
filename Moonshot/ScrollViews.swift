//
//  ScrollView.swift
//  Moonshot
//
//  Created by Denny Arfansyah on 18/01/23.
//

import SwiftUI

struct CView: View {
    let name: String
    var body: some View {
        Text(name)
    }
    
    init(name: String) {
        print("CView \(name)")
        self.name = name
    }
}

struct ScrollViews: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) {
                    CView(name: "\($0)")
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
