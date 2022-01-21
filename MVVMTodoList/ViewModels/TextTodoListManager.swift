//
//  TodoListManager.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import Foundation

class TextTodoListManager: ObservableObject {
    @Published var todoList: [TextTodo]

    func markTodoAsComplete(index: Int) {
        guard (0 ..< todoList.count).contains(index) else {
            return
        }

        todoList[index].markAsComplete()
    }

    func updateTodoContents(index: Int, newContents: String) {
        guard
            (0 ..< todoList.count).contains(index),
            !todoList[index].isComplete
        else {
            return
        }

        todoList[index].updateContents(newContents: newContents)
    }

    init(_ todos: [TextTodo]) {
        self.todoList = todos
    }

    static func getSample() -> TextTodoListManager {
        let manager = TextTodoListManager([
            TextTodo(title: "TestTodo1", contents: "My first todo"),
            TextTodo(title: "TestTodo2", contents: "My second todo"),
            TextTodo(title: "TestTodo3", contents: "My third todo")
        ])

        manager.todoList[1].markAsComplete()

        return manager
    }
}
