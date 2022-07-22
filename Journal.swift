//
//  Journal.swift
//  Prodactive
//
//  Created by Chynna Arceno on 7/22/22.
//

import CoreData

@objc(Journal)
class Journal: NSManagedObject {
    @NSManaged var id: NSNumber!
    @NSManaged var title: String!
    @NSManaged var desc: String!
    @NSManaged var deletedDate: Date?
}
