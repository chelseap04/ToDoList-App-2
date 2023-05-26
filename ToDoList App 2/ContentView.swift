//
//  ContentView.swift
//  ToDoList App 2
//
//  Created by Chelsea Poppleton on 5/24/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
                List {
                        ForEach (toDoItems) { toDoItem in
                            if toDoItem.isImportant == true {
                                Text("‼️" + toDoItem.title)
                            } else {
                                Text(toDoItem.title)
                            }
                            }
                }
                .listStyle(.plain)
            
            }
            .padding()
            Spacer()
        }
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItems: $toDoItems, title: "", isImportant: false)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
