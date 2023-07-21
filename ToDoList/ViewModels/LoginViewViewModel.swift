//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    @Published var showAlert = false
    @Published var showingView = false
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                self?.errorMessage = "Invalid email or password"
                self?.showAlert = true
            }
        }
    }

    
    func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields"
            showAlert = true
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            
            errorMessage = "please enter valid email"
            showAlert = true
            return false
        }
        return true  
    }
}
