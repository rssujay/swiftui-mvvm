//
//  TextTodoListView.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import SwiftUI

struct TextTodoListView: View {
    @ObservedObject var textTodoListManager: TextTodoListManager
    
    var body: some View {
        List(textTodoListManager.todoList) { todo in
            TextTodoRow(
                textTodoItemManager: TextTodoItemManager(todo)
            )
        }
    }
}

struct TextTodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TextTodoListView(textTodoListManager: TextTodoListManager.getSample())
    }
}
