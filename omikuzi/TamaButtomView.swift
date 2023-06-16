//
//  TamaButtomView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/08.
//

import SwiftUI

struct redbutton: View {
    var body: some View {
        Button(action: {}){
            Image("red")
                .frame(width:40, height: 40)
                .clipShape(Circle())
        }
    }
}
struct bluebutton: View {
    var body: some View {
        Button(action:{}){
            Image("blue")
                .renderingMode(.original)
                .frame(width:40, height: 40)
                .clipShape(Circle())
        }
    }
}
struct greenbutton: View {
    var body: some View {
        Button(action:{}){
            Image("green")
                .renderingMode(.original)
                .frame(width:40, height: 40)
                .clipShape(Circle())
        }
    }
}
struct pinkbutton: View {
    var body: some View {
        Button(action:{}){
            Image("pink")
                .renderingMode(.original)
                .frame(width:40, height: 40)
                .clipShape(Circle())
        }
    }
}
struct whitebutton: View {
    var body: some View {
        Button(action:{}){
            Image("white")
                .renderingMode(.original)
                .frame(width:40, height: 40)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 2)
                        .frame(width: 40, height: 40))
        }
    }
}
struct yellowbutton: View {
    var body: some View {
        Button(action:{}){
            Image("yellow")
                .renderingMode(.original)
                .frame(width:40, height: 40)
                .clipShape(Circle())
        }
    }
}
struct purplebutton: View {
    var body: some View {
        Button(action:{}){
            Image("purple")
                .renderingMode(.original)
                .frame(width:40, height: 40)
                .clipShape(Circle())
        }
    }
}

struct TamaButtomView_Previews: PreviewProvider {
    static var previews: some View {
        whitebutton()
    }
}

