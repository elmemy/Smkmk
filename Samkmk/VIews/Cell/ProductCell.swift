//
//  ProductCell.swift
//  Samkmk
//
//  Created by ahmed elmemy on 8/22/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import Foundation
import SwiftUI
struct ProductCell: View {
    @State var products:ProductModel
    var body: some View {
        NavigationLink(destination: ProductDetailsView(product: products)) {
            
            HStack {
                Image(products.image)
                    .resizable()
                    .frame(width: 130, height: 130, alignment: .leading)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                VStack{
                    Text(products.name)
                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                        .padding(.bottom)
                        .foregroundColor(ColorManager.Black)
                        .multilineTextAlignment(.leading)
                        .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                    
                    HStack{
                        Text("سعر الكيلو:")
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                            .foregroundColor(ColorManager.MainColor)
                        Text(products.price)
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                            .foregroundColor(ColorManager.MainColor)
                            .multilineTextAlignment(.leading)
                        
                        
                    }
                    .padding(.bottom, 5.0)
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                    
                    Text(products.prodcutDetails)
                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                        .foregroundColor(ColorManager.Black)
                        .multilineTextAlignment(.leading)
                        .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                    
                    
                }
                .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                
                
            }
        }
        .buttonStyle(PlainButtonStyle())
        
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(products: testData[0])
    }
}
