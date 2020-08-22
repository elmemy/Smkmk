//
//  ContentView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 8/22/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var product:[ProductModel] = []
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(product){product in
                    ProductCell(products: product)
                }
            }
                
            .buttonStyle(PlainButtonStyle())
                
                
            .navigationBarTitle("الرئيسية", displayMode: .inline)
            .navigationBarItems(
                leading:
                Button(action: {}) {
                    Image("slidemenu")
                        .foregroundColor(ColorManager.MainColor)
                }, trailing:
                Button(action: {}) {
                    Image("notificationsbutton")
                        .foregroundColor(ColorManager.MainColor)
                }
                
                
            )
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(product:testData)
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
    }
}
