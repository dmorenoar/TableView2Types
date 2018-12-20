//
//  Category.swift
//  TableView2Types
//
//  Created by DAM on 20/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit

class Category {
    
    var titulo:String
    var img:UIImage = UIImage()
    
    
    init(titulo:String,img:UIImage) {
        self.titulo = titulo
        self.img = img
    }
}
