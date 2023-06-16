//
//  TamaBottumView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/07.
//

import SwiftUI

struct redbuttom: View {
    var body: some View {
        Image("red")
            .frame(width:40, height: 40)
            .clipShape(Circle())
    }
}
struct blue: View {
    var body: some View {
        Image("blue")
            .frame(width:40, height: 40)
            .clipShape(Circle())
    }
}
struct green: View {
    var body: some View {
        Image("green")
            .frame(width:40, height: 40)
            .clipShape(Circle())
    }
}
struct pink: View {
    var body: some View {
        Image("pink")
            .frame(width:40, height: 40)
            .clipShape(Circle())
    }
}
struct white: View {
    var body: some View {
        Image("white")
            .frame(width:40, height: 40)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.gray, lineWidth: 2)
                    .frame(width: 40, height: 40)
            )
    }
}
struct yellow: View {
    var body: some View {
        Image("yellow")
            .frame(width:40, height: 40)
            .clipShape(Circle())
    }
}

struct TamaImageView_Previews: PreviewProvider {
    static var previews: some View {
        white()
    }
}

