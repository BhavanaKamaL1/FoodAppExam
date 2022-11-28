//
//  Details.swift
//  FoodAppExam
//
//  Created by DDUKK on 16/11/22.
//

import Foundation
class Detail{
    var detail = [Assign]()
    
    init(){
        detail.append(Assign(img: "food1", ttl: "Burger", prz: "$ 100"))
        detail.append(Assign(img: "food2", ttl: "KFC", prz: "$ 250"))
        detail.append(Assign(img: "food3", ttl: "Pizza", prz: "$ 190"))
        detail.append(Assign(img: "food5", ttl: "Chappathi and Kuruma", prz: "$ 59"))
        detail.append(Assign(img: "food8", ttl: "Fish Biriyani", prz: "$120"))
    }
}
