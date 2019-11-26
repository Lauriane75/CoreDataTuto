//
//  File.swift
//  CoreDataTuto
//
//  Created by Lauriane Haydari on 26/11/2019.
//  Copyright © 2019 Lauriane Haydari. All rights reserved.
//

import CoreData
import UIKit

class CoreDataHelper {
    // Receive CoreData Base
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    // Receive context
    var context: NSManagedObjectContext {
        return appDelegate.persistentContainer.viewContext
    }
    // Save CoreData
    func save() {
        appDelegate.saveContext()
    }
    // Logic Entity = List
    func saveListe(_ string: String?) {
        guard let texte = string, texte != "" else { return }
        let newList = List(context: context)
        newList.date = Date()
        newList.name = texte
        save()
        print("Saved")
        
    }
    
    
}
