//
//  TodoItemManager.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import Foundation

class TextTodoItemManager: ObservableObject {
    @Published var todoItem: TextTodo

    init(_ textTodoItem: TextTodo) {
        self.todoItem = textTodoItem
    }
}
