//
//  RegisterView.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(angle: 0, background: .purple, title: "Register", subtitle: "Start Organizing things")
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .padding()
                
                TextField("Email Address", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .padding()
                    
                
                SecureField("Password", text: $viewModel.password)
                    .padding()
         
                TLButton(title: "Enter", gradientLeft: .blue, gradientRight: .purple) {
                    viewModel.register()
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
