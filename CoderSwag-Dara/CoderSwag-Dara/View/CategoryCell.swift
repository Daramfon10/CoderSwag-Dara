//
//  CategoryCell.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    
    @IBOutlet weak var catImg: UIImageView!
    @IBOutlet weak var ImgTitle: UILabel!
    
    func updateViews(category:Category){
        catImg.image = UIImage(named:category.imageName)
        ImgTitle.text = category.title
        
        
    }

}
