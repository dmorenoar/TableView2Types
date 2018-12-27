//
//  TableViewCellSections.swift
//  TableView2Types
//
//  Created by dmorenoar on 27/12/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class TableViewCellSections: UITableViewCell {

    
    @IBOutlet weak var titleMovie: UILabel!
    
    @IBOutlet weak var precioMovie: UILabel!
    
    
    @IBOutlet weak var imgMovie: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
