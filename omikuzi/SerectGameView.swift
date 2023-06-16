//
//  SerectGameView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/01.
//

import SwiftUI

// ゲーム選択画面
struct SerectGameView: View {
    @State var hide_omikuzi = false
    @State var hide_iroawase = false
    var body: some View {
        VStack {
            Button("おみくじを引く") {
                hide_omikuzi = true
            }
            Button("色合わせゲーム") {
                hide_iroawase = true
            }
        }
        .fullScreenCover(isPresented: $hide_omikuzi){
            OmikuziView()
        }
        .fullScreenCover(isPresented: $hide_iroawase){
            TamaView()
        }
        .padding()
    }
}


struct SerectGameView_Previews: PreviewProvider {
    static var previews: some View {
        SerectGameView()
    }
}
