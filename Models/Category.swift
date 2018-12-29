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
    var isLiked:Bool //Controlamos si le gusta el género
    var listProducts:[Product] = [Product]()
    
    
    init(titulo:String,img:UIImage,isLiked:Bool, listProducts:[Product]) {
        self.titulo = titulo
        self.img = img
        self.isLiked = isLiked
        self.listProducts = listProducts
    }
    
    init(titulo:String,isLiked:Bool,img:UIImage) {
        self.titulo = titulo
        self.isLiked = isLiked
        self.img = img
    }
    
}
