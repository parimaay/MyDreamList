//
//  Item+CoreDataClass.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 01/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//
//

import Foundation
import CoreData

public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
        
        
    }
}
