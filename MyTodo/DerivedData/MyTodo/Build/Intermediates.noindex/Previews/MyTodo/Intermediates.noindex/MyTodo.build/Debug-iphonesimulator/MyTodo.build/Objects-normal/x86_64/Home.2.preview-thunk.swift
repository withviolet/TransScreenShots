@_private(sourceFile: "Home.swift") import MyTodo
import SwiftUI
import SwiftUI

extension Home_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/Home.swift", line: 41)
        AnyView(Home(main: Main()))
    #sourceLocation()
    }
}

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/Home.swift", line: 33)
        AnyView(ZStack {
            
        })
    #sourceLocation()
    }
}

extension Main {
    @_dynamicReplacement(for: sort()) private func __preview__sort() {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/Home.swift", line: 22)
        self.todos.sort(by: {$0.dueDate.timeIntervalSince1970 < $1.dueDate.timeIntervalSince1970})
        for i in 0 ..< self.todos.count {
            self.todos[i].index = i
        }
    #sourceLocation()
    }
}

import class MyTodo.Main
import struct MyTodo.Home
import struct MyTodo.Home_Previews