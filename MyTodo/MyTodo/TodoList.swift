//
//  TodoList.swift
//  MyTodo
//
//  Created by Chen Xiaohan on 2022/1/10.
//

import SwiftUI

var exampletodos: [Todo] = [
    Todo(context: "学习c++", dueDate: Date()),
    Todo(context: "洗锅", dueDate: Date().addingTimeInterval(30000))
]

struct TodoList: View {
    @ObservedObject var main: Main
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(main.todos) { todoItem in
                    Text("test")
//                    VStack {
//                        if todoItem.index == 0 ||
//                            formatter.string(from: self.main.todos[todoItem.index].dueDate) != formatter.string(from: self.main.todos[todoItem.index - 1].dueDate) {
//                            HStack {
//                                Spacer()
//                                    .frame(width: 30)
//                                Text(date2Word(date: self.main.todos[todoItem.index].dueDate))
//                                Spacer()
//                            }
//                        }
//                        HStack {
//                            TodoItem(main: self.main, todoIndex: .constant(todoItem.index))
//                        }
//                    }
                    Spacer().frame(height: 20)
                }
            }
        }
        .navigationTitle(Text("代办事项"))
        .onAppear {
            if let data = UserDefaults.standard.object(forKey: "todos") as? Data {
                let todoList = NSKeyedUnarchiver.unarchivedObject(ofClass: NSCoding, from: data) as? [Todo] ?? []
                for todo in todoList {
                    if !todo.done {
                        self.main.todos.append(todo)
                    }
                }
                self.main.sort()
            }else {
                self.main.todos = exampletodos
                self.main.sort()
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList(main: Main())
    }
}
