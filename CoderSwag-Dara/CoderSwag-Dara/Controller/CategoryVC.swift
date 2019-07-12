//
//  ViewController.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var x:Int = 0

    @IBOutlet weak var catTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catTable.delegate = self
        catTable.dataSource = self
        print(catTable.numberOfRows(inSection: x))
    
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        x = section
        return DataService.instance.getCategories().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else{
            return CategoryCell()
        }

    }


}

