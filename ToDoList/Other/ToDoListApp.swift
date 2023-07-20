//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
