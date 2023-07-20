//
//  ContentView.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isSingedIn, !viewModel.currentUserId.isEmpty {
                TabView {
                    ToDoListView(userId: viewModel.currentUserId)
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person.circle")
                        }
                    
                }
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
