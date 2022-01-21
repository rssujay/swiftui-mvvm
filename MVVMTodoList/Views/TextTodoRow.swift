//
//  TextTodoRow.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import SwiftUI

struct TextTodoRow: View {
    @ObservedObject var manager: TextTodoItemManager
    
    var body: some View {
        func createTodoView(_ color: Color) -> some View {
            return HStack {
                VStack {
                    Text(manager.title)
                        .font(.title)
                        .foregroundColor(color)

                    Spacer()

                    Text(manager.contents)
                }

                Spacer()
            }
        }

        let color = manager.isComplete ? Color.green : Color.orange

        return createTodoView(color)
            .onTapGesture{
                manager.markAsComplete()
            }
    }
}

struct TextTodoRow_Previews: PreviewProvider {
    static var previews: some View {
        TextTodoRow(manager: TextTodoItemManager(
            TextTodo(title: "test title", contents: "test contents")
        ))
    }
}
