//
//  OmikuziView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/03/11.
//

import SwiftUI

struct OmikuziView: View {
    @State var hide = false
    @State var homehide = false
    var body: some View {
        VStack {
            Button("おみくじを引く") {
                hide = true
            }
            Button("ホームヘ戻る") {
                homehide = true
            }
        }
        .fullScreenCover(isPresented: $hide){
            OmikuziResultView()
        }
        .fullScreenCover(isPresented: $homehide){
            SerectGameView()
        }
    }
}

struct OmikuziView_Previews: PreviewProvider {
    static var previews: some View {
        OmikuziView()
    }
}
