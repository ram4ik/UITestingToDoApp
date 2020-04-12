//
//  ContentView.swift
//  UITestingToDoApp
//
//  Created by Ramill Ibragimov on 12.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskName: String = ""
    @State private var tasks = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter task: ", text: $taskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .accessibility(identifier: "taskNameTextField")
                    Button("Add") {
                        self.tasks.append(self.taskName)
                    }
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .accessibility(identifier: "addTaskButton")
                }
                
                List(self.tasks, id: \.self) { name in
                    Text("\(name)")
                }
                Spacer()
                
            }.padding()
            .navigationBarTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
