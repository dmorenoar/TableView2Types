//
//  Product.swift
//  TableView2Types
//
//  Created by dmorenoar on 27/12/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit

class Product {
    var titulo:String
    var precio:Int
    var img:UIImage = UIImage()
    
    init(titulo:String, precio:Int, img:UIImage) {
        self.titulo = titulo
        self.precio = precio
        self.img = img
    }
    
    
}
