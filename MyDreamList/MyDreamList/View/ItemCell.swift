//
//  ItemCellTableViewCell.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 05/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    func configureCell(item: Item) {
        title.text = item.title
        price.text = "$\(item.price)"
        detail.text = item.details
    }
  
}
