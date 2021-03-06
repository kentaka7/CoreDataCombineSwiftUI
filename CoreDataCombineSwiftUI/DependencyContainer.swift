//
//  DependencyContainer.swift
//  CoreDataCombineSwiftUI
//
//  Created by Toomas Vahter on 13.01.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import CoreData

final class DependencyContainer {
    let persistentContainer: NSPersistentContainer
    
    init() {
        self.persistentContainer = NSPersistentContainer(name: "CoreDataCombineSwiftUI")
    }
    
    func loadDependencies(withCompletionHandler completionHandler: @escaping () -> Void) {
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
            completionHandler()
        }
    }
}
