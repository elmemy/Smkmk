//
//  ProductDetailsView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 8/22/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//


import SwiftUI

struct ProductDetailsView: View {
    @State var product:ProductModel
    
    var body: some View {
        
        ScrollView {
            VStack {
                SliderCell()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
                HStack{
                    VStack{
                        Text(product.name)
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.titleSize)))
                            .fontWeight(.bold)
                            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                        
                        Text(product.type)
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                            .foregroundColor(ColorManager.MainGray)
                    }
                    .padding([.leading, .trailing])
                    
                    VStack{
                        HStack{
                            Image("starrateproducticonon")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Image("starrateproducticonon")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Image("ratestaroff")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Image("ratestaroff")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Image("ratestaroff")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity,alignment: .topTrailing)
                        
                        Text("\(product.price)")
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topTrailing)
                            .foregroundColor(ColorManager.MainColor)
                    }
                    .padding([.leading, .trailing])
                }
                Text("_________________________________________________________")
                    .foregroundColor(ColorManager.Gray)
                    .lineLimit(1)
                
                Text("هل قمت بتجربة هذا المنتج؟")
                    .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .center)
                
                Button(action:{}){
                    HStack{
                        Image("rateebtnicon")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.horizontal, 10.0)
                            .foregroundColor(ColorManager.MainColor)
                        
                        Text("قيم المنتج الان ")
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorManager.MainColor)
                            .padding(.horizontal, 10.0)
                        
                    }
                    .padding(7.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(ColorManager.MainColor, lineWidth: 1)
                    )
                }
                
                Text("_________________________________________________________")
                    .foregroundColor(ColorManager.Gray)
                    .lineLimit(1)
                
                
                Text("وصف المنتج")
                    .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                    .padding()
                
                Text(product.prodcutDetails)
                    .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .center)
                    .padding([.leading, .bottom, .trailing])
                    .foregroundColor(ColorManager.MainGray)
                
                
                Text("_________________________________________________________")
                    .foregroundColor(ColorManager.Gray)
                    .lineLimit(1)
                
                
                
            }
            Spacer()
                .navigationBarTitle(Text(product.name), displayMode: .inline)
        }
        
        
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: testData[1])
            
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
    }
}
