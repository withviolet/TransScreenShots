@_private(sourceFile: "Home.swift") import MyTodo
import SwiftUI
import SwiftUI

extension Home_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/Home.swift", line: 41)
        AnyView(__designTimeSelection(Home(main: __designTimeSelection(Main(), "#29580.[7].[0].property.[0].[0].arg[0].value")), "#29580.[7].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension Home {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/Home.swift", line: 33)
        AnyView(__designTimeSelection(ZStack {
            
        }, "#29580.[6].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

extension Main {
    @_dynamicReplacement(for: sort()) private func __preview__sort() {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/Home.swift", line: 22)
        __designTimeSelection(self.todos.sort(by: {$0.dueDate.timeIntervalSince1970 < $1.dueDate.timeIntervalSince1970}), "#29580.[5].[4].[0]")
        for i in 0 ..< self.todos.count {
            self.todos[i].index = i
        }
    #sourceLocation()
    }
}

import class MyTodo.Main
import struct MyTodo.Home
import struct MyTodo.Home_Previews