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
            .frame(width:300, height: 300)
            .clipShape(Circle())
    }
}
struct tyukiti: View {
    var body: some View {
        Image("tyukiti")
            .frame(width:300, height: 300)
            .clipShape(Circle())
    }
}
struct syokiti: View {
    var body: some View {
        Image("syokiti")
            .frame(width:300, height: 300)
            .clipShape(Circle())
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        tyukiti()
    }
}
