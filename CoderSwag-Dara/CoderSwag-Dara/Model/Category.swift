//
//  Category.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String,imageName:String) {
    
        self.title = title
        self.imageName = imageName
        
    }

}
