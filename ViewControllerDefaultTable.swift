//
//  ViewControllerDefaultTable.swift
//  TableView2Types
//
//  Created by DAM on 20/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

var category:[Category] = [
    Category(titulo: "Sci-fi", img: UIImage(named: "scifi")!),
    Category(titulo: "Comedy", img: UIImage(named: "comedy")!),
    Category(titulo: "Fantastic", img: UIImage(named: "fantastic")!),
    Category(titulo: "Terror", img: UIImage(named: "terror")!),
]

var categoryProducts:[Category] = [
    
    Category(titulo: "Comedy", img: UIImage(named: "comedy")!, listProducts: [
        Product(titulo: "Rompe Ralph", precio: 22, img: UIImage(named: "rompeRalph")!),
        Product(titulo: "Zoolander", precio: 88, img: UIImage(named: "zoolander")!)
    ]),
    Category(titulo: "Drama", img: UIImage(named: "drama")!, listProducts: [
        Product(titulo: "Titanic", precio: 33, img: UIImage(named: "titanic")!),
        Product(titulo: "Lo imposible", precio: 88, img: UIImage(named: "loImposible")!),
        Product(titulo: "Ha nacido una estrella", precio: 15, img: UIImage(named: "nacidoEstrella")!)
        ]),
    Category(titulo: "Sci-fi", img: UIImage(named: "scifi")!, listProducts: [
        Product(titulo: "Matrix", precio: 22, img: UIImage(named: "matrix")!),
        Product(titulo: "Interstellar", precio: 88, img: UIImage(named: "interstellar")!)
        ])
]


class ViewControllerDefaultTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        myCell.textLabel?.text = category[indexPath.row].titulo
        
        return myCell
        
    }
    
  
    
    
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
