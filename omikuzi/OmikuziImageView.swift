//
//  OmikuziImageView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/01.
//

import SwiftUI

struct daikiti: View {
    var body: some View {
        Image("daikiti")
            .resizable()
    }
}
struct tyukiti: View {
    var body: some View {
        Image("tyukiti")
            .resizable()
    }
}
struct syokiti: View {
    var body: some View {
        Image("syokiti")
            .resizable()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        tyukiti()
    }
}
