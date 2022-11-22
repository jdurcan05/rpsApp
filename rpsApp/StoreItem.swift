//
//  StoreItem.swift
//  rpsApp
//
//  Created by JAMES DURCAN on 11/21/22.
//

import Foundation

class StoreItem{
    var itemTitle: String
    var place: StoreItem.bodyPlace
    var price: Int
    
    enum bodyPlace{
    case head, torso, feet
    }
    
    init(inItemTitle: String, inPlace: StoreItem.bodyPlace, inPrice: Int){
        itemTitle = inItemTitle
        place = inPlace
        price = inPrice
    }
    
}
