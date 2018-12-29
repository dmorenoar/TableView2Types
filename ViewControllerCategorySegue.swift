//
//  ViewControllerCategorySegue.swift
//  TableView2Types
//
//  Created by dmorenoar on 28/12/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerCategorySegue: UIViewController {
    
    
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    var imgC:UIImage = UIImage()
    var lblC:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgCategory.image = imgC
        lblCategory.text = lblC
        
        // Do any additional setup after loading the view.
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
