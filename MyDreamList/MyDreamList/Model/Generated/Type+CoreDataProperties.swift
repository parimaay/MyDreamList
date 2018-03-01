//
//  Type+CoreDataProperties.swift
//  MyDreamList
//
//  Created by Parima Ayazi on 01/03/2018.
//  Copyright © 2018 Parima Ayazi. All rights reserved.
//
//

import Foundation
import CoreData


extension Type {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Type> {
        return NSFetchRequest<Type>(entityName: "Type")
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
