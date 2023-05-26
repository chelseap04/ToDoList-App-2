//
//  ToDoItem.swift
//  ToDoList App 2
//
//  Created by Chelsea Poppleton on 5/25/23.
//

import Foundation
class ToDoItem: Identifiable {
    var title = ""
    var isImportant = false
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

