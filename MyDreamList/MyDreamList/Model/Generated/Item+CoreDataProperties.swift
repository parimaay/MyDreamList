//
//  Item+CoreDataProperties.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 06/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var created: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var price: Double
    @NSManaged public var title: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toItemType: Type?
    @NSManaged public var toStore: Store?

}
