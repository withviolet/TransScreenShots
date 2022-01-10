//
//  TodoItem.swift
//  MyTodo
//
//  Created by Chen Xiaohan on 2022/1/10.
//

import SwiftUI
class Todo: NSObject,Identifiable, NSCoding {
    var context: String = ""
    var index: Int = 0
    var dueDate: Date = Date()
    var done: Bool = false
    
    init(context: String, dueDate: Date) {
        self.context = context
        self.dueDate = dueDate
    }
    
    required init?(coder: NSCoder) {
        self.context = coder.decodeObject(forKey: "context") as? String ?? ""
        self.dueDate = coder.decodeObject(forKey: "dueDate") as? Date ?? Date()
        self.done = coder.decodeBool(forKey: "done")
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(self.context, forKey: "context")
        coder.encode(self.dueDate, forKey: "dueDate")
        coder.encode(self.done, forKey: "done")
    }
}

var emptyTodo: Todo = Todo(context: "", dueDate: Date())

struct TodoItem: View {
    @ObservedObject var main: Main
    @Binding var todoIndex: Int
    @State var checked: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                HStack {
                    VStack {
                        Rectangle()
                            .fill(Color(.gray))
                            .frame(width: 8)
                    }
                    Spacer()
                        .frame(width: 26)
                    VStack {
                        HStack{
                            Text("学习swift")
                                .foregroundColor(.black)
                                .font(.headline)
                            Spacer()
                            
                        }
                        HStack {
                            Text("22/01/10")
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
                        .frame(width: 15)
                    Image(systemName: "checkmark.square.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(width: 15)
                }
            })
        }
        .frame(width: nil, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(10.0)
    }
}

struct TodoItem_Previews: PreviewProvider {
    static var previews: some View {
        TodoItem(main: Main(), todoIndex: .constant(0))
    }
}
