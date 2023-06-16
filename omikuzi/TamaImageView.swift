//
//  TamaImageView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/04/03.
//

import SwiftUI

struct red: View {
    var body: some View {
        Circle()
            .fill(Color.red)
            .frame(width:40, height: 40)
    }
}
struct blue: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width:40, height: 40)
    }
}
struct green: View {
    var body: some View {
        Circle()
            .fill(Color.green)
            .frame(width:40, height: 40)
    }
}
struct orange: View {
    var body: some View {
        Circle()
            .fill(Color.orange)
            .frame(width:40, height: 40)
    }
}
struct white: View {
    var body: some View {
        Circle()
            .fill(Color.white)
            .frame(width: 40, height: 40)
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 2)
            )
    }
}
struct yellow: View {
    var body: some View {
        Circle()
            .fill(Color.yellow)
            .frame(width:40, height: 40)
    }
}
struct purple: View {
    var body: some View {
        Circle()
            .fill(Color.purple)
            .frame(width:40, height: 40)
    }
}

struct TamaImageView_Previews: PreviewProvider {
    static var previews: some View {
        white()
    }
}
