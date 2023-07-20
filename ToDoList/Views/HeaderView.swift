//
//  HeaderView.swift
//  ToDoList
//
//  Created by Nayan Prajapati on 7/15/23.
//

import SwiftUI

struct HeaderView: View {
    let angle: Double
    let background: Color
    let title: String
    let subtitle: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .padding()
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 50))
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 250)
//        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(angle: 15, background: .blue, title: "Title", subtitle: "Subtitle")
    }
}
