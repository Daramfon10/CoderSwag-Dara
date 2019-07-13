//
//  ProductsVC.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    private(set) public var products = [Products]()
    @IBOutlet weak var productView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productView.delegate = self
        productView.dataSource = self

    }
    func initProducts(category:Category){
    products = DataService.instance.getProducts(title: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
        let product = products[indexPath.row]
        cell.updateViews(product: product)
        return cell
        }
        else{
            return ProductCell()
        }
        
    }
    
    


}
