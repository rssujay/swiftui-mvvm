//
//  TextTodoRow.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import SwiftUI

struct TextTodoRow: View {
    @ObservedObject var textTodoItemManager: TextTodoItemManager
    
    var body: some View {
        func createTodoView(_ color: Color) -> some View {
            return VStack {
                Text(textTodoItemManager.todoItem.title)
                    .font(.title)
                    .foregroundColor(color)

                Spacer()
                
                Text(textTodoItemManager.todoItem.contents)
            }
        }
        
        if textTodoItemManager.todoItem.isComplete {
            return HStack {
                createTodoView(Color.green)
                Spacer()
            }
        } else {
            return HStack {
                createTodoView(Color.orange)
                Spacer()
            }
        }

    }
}

struct TextTodoRow_Previews: PreviewProvider {
    static var previews: some View {
        TextTodoRow(textTodoItemManager: TextTodoItemManager(
            TextTodo(title: "test title", contents: "test contents")
        ))
    }
}
