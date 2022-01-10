//
//  Home.swift
//  MyTodo
//
//  Created by Chen Xiaohan on 2022/1/10.
//

import SwiftUI

var editingMode: Bool = false
var editingTodo: Todo = emptyTodo
var editingIndex: Int = 0
var detailsShouldUpdate: Bool = false

class Main: ObservableObject {
    @Published var todos: [Todo] = []
    @Published var detailsShowing: Bool = false
    @Published var detailsTitle: String = ""
    @Published var detailsDueDate: Date = Date()
    
    func sort() {
        self.todos.sort(by: {$0.dueDate.timeIntervalSince1970 < $1.dueDate.timeIntervalSince1970})
        for i in 0 ..< self.todos.count {
            self.todos[i].index = i
        }
    }
}

struct Home: View {
    @ObservedObject var main: Main
    
    var body: some View {
        ZStack {
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(main: Main())
    }
}
