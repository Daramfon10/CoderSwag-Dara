//
//  Products.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import Foundation

struct Products {
    private(set) public var productTitle: String
    private(set) public var productImageName:String
    private(set) public var productPrice:String
    
    init(productTitle:String,productImageName:String,productPrice:String) {
        self.productTitle = productTitle
        self.productImageName = productImageName
        self.productPrice = productPrice
    }
}
