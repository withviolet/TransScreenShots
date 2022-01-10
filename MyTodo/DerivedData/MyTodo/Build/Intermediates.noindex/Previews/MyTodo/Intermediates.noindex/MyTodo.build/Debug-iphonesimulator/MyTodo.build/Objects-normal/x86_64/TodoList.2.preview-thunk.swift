@_private(sourceFile: "TodoList.swift") import MyTodo
import SwiftUI
import SwiftUI

extension TodoList_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoList.swift", line: 61)
        AnyView(TodoList(main: Main()))
    #sourceLocation()
    }
}

extension TodoList {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoList.swift", line: 19)
        AnyView(NavigationView {
            ScrollView {
                ForEach(main.todos) { todoItem in
                    Text(__designTimeString("#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "test"))
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
                    Spacer().frame(height: __designTimeInteger("#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value", fallback: 20))
                }
            }
        }
        .navigationTitle(Text(__designTimeString("#31024.[2].[1].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: "代办事项")))
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
        })
    #sourceLocation()
    }
}

import struct MyTodo.TodoList
import struct MyTodo.TodoList_Previews