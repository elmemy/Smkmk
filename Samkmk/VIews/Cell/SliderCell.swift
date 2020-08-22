//
//  SliderCell.swift
//  Samkmk
//
//  Created by ahmed elmemy on 8/22/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct SliderCell: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(1..<10){_ in
                    Image("Slider")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
        }
    }
}

struct SliderCell_Previews: PreviewProvider {
    static var previews: some View {
        SliderCell()
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
    }
}
