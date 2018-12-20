//
//  ViewControllerDefaultTable.swift
//  TableView2Types
//
//  Created by DAM on 20/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerDefaultTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        myCell.textLabel?.text = category[indexPath.row].titulo
        
        return myCell
        
    }
    
    

    var category:[Category] = [
        Category(titulo: "Sci-fi", img: UIImage(named: "scifi")!),
        Category(titulo: "Comedy", img: UIImage(named: "comedy")!),
        Category(titulo: "Drama", img: UIImage(named: "drama")!),
        Category(titulo: "Terror", img: UIImage(named: "terror")!),
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    tableView.delegate = self
        tableView.dataSource = self
    
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
