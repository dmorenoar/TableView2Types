//
//  ViewControllerTableViewSections.swift
//  TableView2Types
//
//  Created by dmorenoar on 27/12/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerTableViewSections: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryProducts[section].listProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellSections
        
        myCell.imgMovie.image = categoryProducts[indexPath.section].listProducts[indexPath.row].img
        myCell.precioMovie.text = String(categoryProducts[indexPath.section].listProducts[indexPath.row].precio)
        myCell.titleMovie.text = categoryProducts[indexPath.section].listProducts[indexPath.row].titulo
        
        return myCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categoryProducts.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categoryProducts[section].titulo
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
