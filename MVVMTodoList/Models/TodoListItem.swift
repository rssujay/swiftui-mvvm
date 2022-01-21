//
//  ListItem.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import Foundation

protocol TodoListItem: Identifiable {
    var id: UUID { get }
    var title: String { get }
    var contents: String { get set }
    var isComplete: Bool { get set }
    
    mutating func markAsComplete()
}
