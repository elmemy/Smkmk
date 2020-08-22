//
//  ProductModel.swift
//  Samkmk
//
//  Created by ahmed elmemy on 8/22/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import Foundation

struct ProductModel :Identifiable{
    
    var id = UUID()
    var name:String
    var image:String
    var price:String
    var type:String
    var prodcutDetails:String
    
}



let testData = [
    ProductModel(name: "جمبري جامبو", image: "romban", price:"120$", type: "قشريات",prodcutDetails:"هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
    ProductModel(name: "سمك شبار", image: "romban", price: "120$", type: "قشريات",prodcutDetails:"هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،"),
    ProductModel(name: "جمبري مشوي", image: "romban", price:"120$", type: "قشريات",prodcutDetails:"هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،"),
    ProductModel(name: "سمك بوري", image: "romban", price: "120$", type: "قشريات",prodcutDetails:"هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،"),

]


