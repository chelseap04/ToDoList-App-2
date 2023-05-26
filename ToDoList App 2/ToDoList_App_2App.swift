//
//  ToDoList_App_2App.swift
//  ToDoList App 2
//
//  Created by Chelsea Poppleton on 5/24/23.
//

import SwiftUI

@main
struct ToDoList_App_2App: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
