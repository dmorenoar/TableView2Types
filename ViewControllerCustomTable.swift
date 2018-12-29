//
//  ViewControllerCustomTable.swift
//  TableView2Types
//
//  Created by DAM on 20/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerCustomTable: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellCustom
        
       myCell.lblCell.text  = category[indexPath.row].titulo
       myCell.imgCell.image = category[indexPath.row].img
        myCell.imgLiked.isHidden = true
        if category[indexPath.row].isLiked{
            myCell.imgLiked.isHidden = false
        }
        
        
       return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Categories"
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        //Efecto left in
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0.5
        
        UIView.animate(withDuration: 1.0) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
        
        
        /*
        //efecto fade IN
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, 0, 50, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0
        UIView.animate(withDuration: 0.75) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }*/
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let isLiked = likedCategory(indexPath:indexPath)
        //Adjuntamos todas las opciones que necesitemos en modo de array
        return UISwipeActionsConfiguration(actions: [isLiked])
    }
    
    func likedCategory(indexPath:IndexPath) -> UIContextualAction{
        let action = UIContextualAction(style: .normal, title: "Like") { (action, view, completion) in
            category[indexPath.row].isLiked = !category[indexPath.row].isLiked
            self.tableView.reloadRows(at: [indexPath], with: .none)
            action.title = "You like this!"
            completion(true)
        }
        
        action.title = category[indexPath.row].isLiked ? "Dislike!" : "Like"
        action.image = UIImage(named: "like")
        action.backgroundColor =  category[indexPath.row].isLiked ? UIColor.purple : UIColor.gray
        
        
        return action
    }
    
    /*
     Pasos para crear la función delete:
     Duplicar el método likeCategory añadiendo únicamente:
     En lugar de style normal, podríamos utilizar otro estilo.
     Eliminar del array la fila seleccionada
     Eliminar de la tabla la fila: Para borrar usaremos la función deleteRows del tableView
     */
    
    /*Os dejo un framework muy bueno para personalizar todavía más nuestras opciones
     
     https://github.com/SwipeCellKit/SwipeCellKit
     
     */
    
    /*Al seleccionar una row nos enviará a la página de la categoría*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "detailCategory") as! ViewControllerCategorySegue
        
        print(category[indexPath.row].titulo)
        
        vc.imgC = category[indexPath.row].img
        vc.lblC = category[indexPath.row].titulo
        
        
        /*Definir un texto especial para el botón de volver según lo que le preceda*/
        let backItem = UIBarButtonItem()
        backItem.title = "Categories"
        navigationItem.backBarButtonItem = backItem
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      
    }
    

}
