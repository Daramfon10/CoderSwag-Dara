//
//  ProductCell.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productTitle:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    func updateViews(product:Products){
        productImage.image = UIImage(named: product.productImageName)
        productTitle.text = product.productTitle
        productPrice.text = product.productPrice
        
    }
    
    
    
    
}
