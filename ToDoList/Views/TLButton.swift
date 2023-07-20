//
//  TLButton.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let gradientLeft: Color
    let gradientRight: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.blue)
                    .shadow(color: .blue, radius: 10, x: 0, y: 5)
                
                LinearGradient(gradient: Gradient(colors: [gradientLeft, gradientRight]), startPoint: .leading, endPoint: .trailing)
                    .cornerRadius(10)
                
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
            .padding(20)
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Enter",
                 gradientLeft: .blue,
                 gradientRight: .purple) {
        }
    }
}
