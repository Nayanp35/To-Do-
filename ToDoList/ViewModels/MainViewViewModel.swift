//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var showingView = false
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSingedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
