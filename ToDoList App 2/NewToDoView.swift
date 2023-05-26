//
//  NewToDoView.swift
//  ToDoList App 2
//
//  Created by Chelsea Poppleton on 5/25/23.
//

import SwiftUI

struct NewToDoView: View {
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
              
            }) {
                Text("Add")
            }
        }
        .padding()
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
