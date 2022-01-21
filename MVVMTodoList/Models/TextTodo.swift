//
//  TextTodo.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import Foundation

struct TextTodo: TodoListItem {
    let id: UUID
    
    var title: String
    var contents: String
    var isComplete: Bool

    init(title: String, contents: String) {
        self.id = UUID()
        self.title = title
        self.contents = contents
        self.isComplete = false
    }

    mutating func updateContents(newContents: String) {
        guard
            newContents != contents,
            checkContentRequirements(newContents)
        else {
            return
        }

        contents = newContents
    }

    mutating func markAsComplete() {
        guard !isComplete else {
            return
        }

        isComplete = true
    }

    private func checkContentRequirements(_ newContents: String) -> Bool {
        return !newContents.isEmpty && !isComplete
    }
}
