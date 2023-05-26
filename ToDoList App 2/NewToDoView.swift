//
//  NewToDoView.swift
//  ToDoList App 2
//
//  Created by Chelsea Poppleton on 5/25/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @Binding var showNewTask : Bool
    @State var title: String
    @State var isImportant: Bool

    var body: some View {
        VStack {
            Text("Add a new task")
            TextField("Enter the task description", text: $title)
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                        }
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
            }) {
                Text("Add")
            }
        }
        .padding()
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
          let task = ToDo(context: context)
          task.id = UUID()
          task.title = title
          task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
            
        }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(showNewTask: .constant(true),  title: "", isImportant: false)
    }
    
}
