//
//  ItemModel.swift
//  iOS-week3
//
//  Created by  정지원 on 2024/04/27.
//

import UIKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: UIImage(named: "product1")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product2")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product3")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product4")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product5")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product1")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product2")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product3")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product4")!, name: "류희재", price: "22000원", heartIsSelected: false),
            ItemModel(itemImg: UIImage(named: "product5")!, name: "류희재", price: "22000원", heartIsSelected: false)
        ]
    }
}


