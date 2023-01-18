//
//  GeometryReadyView.swift
//  Moonshot
//
//  Created by Denny Arfansyah on 18/01/23.
//

import SwiftUI

struct GeometryReadyView: View {
    var body: some View {
        GeometryReader { geo in
            Image("aldrin")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.9)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct GeometryReadyView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReadyView()
    }
}
