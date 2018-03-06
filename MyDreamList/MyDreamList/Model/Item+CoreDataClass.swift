//
//  Item+CoreDataClass.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 06/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
}
