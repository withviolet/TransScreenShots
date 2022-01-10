@_private(sourceFile: "TodoItem.swift") import MyTodo
import SwiftUI
import SwiftUI

extension TodoItem_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoItem.swift", line: 92)
        AnyView(TodoItem(main: Main(), todoIndex: .constant(__designTimeInteger("#14980.[4].[0].property.[0].[0].arg[1].value.arg[0].value", fallback: 0))))
    #sourceLocation()
    }
}

extension TodoItem {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoItem.swift", line: 41)
        AnyView(HStack {
            Button(action: {
                
            }, label: {
                HStack {
                    VStack {
                        Rectangle()
                            .fill(Color(.gray))
                            .frame(width: __designTimeInteger("#14980.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 8))
                    }
                    Spacer()
                        .frame(width: __designTimeInteger("#14980.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 26))
                    VStack {
                        HStack{
                            Text(__designTimeString("#14980.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "学习swift"))
                                .foregroundColor(.black)
                                .font(.headline)
                            Spacer()
                            
                        }
                        HStack {
                            Text(__designTimeString("#14980.[3].[3].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "22/01/10"))
                                .foregroundColor(.gray)
                                .font(.subheadline)
                            Spacer()
                        }
                    }
                }
            })
            Button(action: {
                
            }, label: {
                HStack {
                    Spacer()
                        .frame(width: __designTimeInteger("#14980.[3].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 15))
                    Image(systemName: __designTimeString("#14980.[3].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "checkmark.square.fill"))
                        .resizable()
                        .frame(width: __designTimeInteger("#14980.[3].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 24), height: __designTimeInteger("#14980.[3].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 24))
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(width: __designTimeInteger("#14980.[3].[3].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 15))
                }
            })
        }
        .frame(width: nil, height: __designTimeInteger("#14980.[3].[3].property.[0].[0].modifier[0].arg[1].value", fallback: 80), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(__designTimeFloat("#14980.[3].[3].property.[0].[0].modifier[1].arg[0].value", fallback: 10.0)))
    #sourceLocation()
    }
}

extension Todo {
    @_dynamicReplacement(for: encode(with:)) private func __preview__encode(with coder: NSCoder) {
        #sourceLocation(file: "/Users/chenxiaohan/StudySpace/MyTodo/MyTodo/TodoItem.swift", line: 27)
        coder.encode(self.context, forKey: __designTimeString("#14980.[1].[6].[0].modifier[0].arg[1].value", fallback: "context"))
        coder.encode(self.dueDate, forKey: __designTimeString("#14980.[1].[6].[1].modifier[0].arg[1].value", fallback: "dueDate"))
        coder.encode(self.done, forKey: __designTimeString("#14980.[1].[6].[2].modifier[0].arg[1].value", fallback: "done"))
    #sourceLocation()
    }
}

import class MyTodo.Todo
import struct MyTodo.TodoItem
import struct MyTodo.TodoItem_Previews