@_private(sourceFile: "TodoList.swift") import MyTodo
import SwiftUI
import SwiftUI

extension TodoList_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoList.swift", line: 61)
        AnyView(__designTimeSelection(TodoList(main: __designTimeSelection(Main(), "#31024.[3].[0].property.[0].[0].arg[0].value")), "#31024.[3].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension TodoList {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoList.swift", line: 19)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(ScrollView {
                __designTimeSelection(ForEach(__designTimeSelection(main.todos, "#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value")) { todoItem in
                    __designTimeSelection(Text(__designTimeString("#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "test")), "#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
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
                    __designTimeSelection(Spacer().frame(height: __designTimeInteger("#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value", fallback: 20)), "#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1]")
                }, "#31024.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            }, "#31024.[2].[1].property.[0].[0].arg[0].value.[0]")
        }
        .navigationTitle(__designTimeSelection(Text(__designTimeString("#31024.[2].[1].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: "代办事项")), "#31024.[2].[1].property.[0].[0].modifier[0].arg[0].value"))
        .onAppear {
            if let data = UserDefaults.standard.object(forKey: "todos") as? Data {
                let todoList = NSKeyedUnarchiver.unarchivedObject(ofClass: NSCoding, from: data) as? [Todo] ?? []
                for todo in __designTimeSelection(todoList, "#31024.[2].[1].property.[0].[0].modifier[1].arg[0].value.[0].[0].[1].sequence") {
                    if !todo.done {
                        __designTimeSelection(self.main.todos.append(__designTimeSelection(todo, "#31024.[2].[1].property.[0].[0].modifier[1].arg[0].value.[0].[0].[1].[0].[0].[0].modifier[0].arg[0].value")), "#31024.[2].[1].property.[0].[0].modifier[1].arg[0].value.[0].[0].[1].[0].[0].[0]")
                    }
                }
                __designTimeSelection(self.main.sort(), "#31024.[2].[1].property.[0].[0].modifier[1].arg[0].value.[0].[0].[2]")
            }else {
                self.main.todos = exampletodos
                __designTimeSelection(self.main.sort(), "#31024.[2].[1].property.[0].[0].modifier[1].arg[0].value.[0].[1].[1]")
            }
        }, "#31024.[2].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct MyTodo.TodoList
import struct MyTodo.TodoList_Previews