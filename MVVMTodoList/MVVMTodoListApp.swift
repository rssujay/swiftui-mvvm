//
//  MVVMTodoListApp.swift
//  MVVMTodoList
//
//  Created by Sujay R Subramanian on 21/1/22.
//

import SwiftUI

@main
struct MVVMTodoListApp: App {
    @StateObject var textTodoListManager: TextTodoListManager = TextTodoListManager([])

    var body: some Scene {
        WindowGroup {
            TextTodoListView(textTodoListManager: textTodoListManager)
        }
    }
}
