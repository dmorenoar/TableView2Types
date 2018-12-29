//
//  ViewController.swift
//  TableView2Types
//
//  Created by DAM on 20/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showView(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "viewSimple") as! ViewControllerSimple
        
        self.present(vc, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueInfo" {
            if let destinationVC = segue.destination as? ViewControllerSimple {
                destinationVC.lblH  = "Hola con Segue"
            }
            
        }
    }
    
}

