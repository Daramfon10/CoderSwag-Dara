//
//  Service.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import Foundation

class DataService{
    
  static let instance = DataService()
    
    private let categoriess = [Category(title: "SHIRTS", imageName: "shirts.png"), Category(title: "HATS", imageName: "hats.png"),Category(title: "HOODIES", imageName: "hoodies.png"),Category(title: "DIGITAL", imageName: "digital.png")]
    
    
    func getCategories()-> [Category]{
        return categoriess
    }
    
    
    

}
