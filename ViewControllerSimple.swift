//
//  ViewControllerSimple.swift
//  TableView2Types
//
//  Created by dmorenoar on 29/12/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerSimple: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    
    var lblH:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblHello.text = lblH
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
