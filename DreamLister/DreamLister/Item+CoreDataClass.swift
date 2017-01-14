//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Kevin Kang on 1/13/17.
//  Copyright © 2017 Kevin Kang. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }
    
    
}
