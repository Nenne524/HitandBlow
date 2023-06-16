//
//  OmikuziResultView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/01.
//

import SwiftUI

struct OmikuziResultView: View {
    @State var hide = false
    @State var homehide = false
    var body: some View{
        let randomInt = Int.random(in: 1..<4)
        VStack{
            if(randomInt == 1){
                daikiti()
                Text("大吉")
            }
            if(randomInt == 2){
                tyukiti()
                Text("中吉")
            }
            if(randomInt == 3){
                syokiti()
                Text("小吉")
            }
            Button("もう一度引く") {
                hide = true
            }
            Button("ホームヘ戻る") {
                homehide = true
            }
        }
        .fullScreenCover(isPresented: $hide){
            OmikuziView()
        }
        .fullScreenCover(isPresented: $homehide){
            SerectGameView()
        }
    }
}

struct OmikuziResultView_Previews: PreviewProvider {
    static var previews: some View {
        OmikuziResultView()
    }
}
