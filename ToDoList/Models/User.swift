//
//  User.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    
}
