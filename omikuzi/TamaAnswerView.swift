//
//  TamaAnswerView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/08.
//

import SwiftUI

struct TamaAnswerView: View {
    @State var homehide = false
    @State var hide = false
    var body: some View {
        if iroanditi_count < 4{
            VStack{
                HStack{
                    Text("色のみ正解:")
                    Text(String(iro_count))
                }
                HStack{
                    Text("色と位置が正解:")
                    Text(String(iroanditi_count))
                }
                //再挑戦
                Button("再挑戦") {
                    hide = true
                }
                //ホームヘ戻る
                Button("ホームヘ戻る") {
                    answerlist.removeAll()
                    iro_count = 0
                    iroanditi_count = 0
                    iro_countlist.removeAll()
                    iroanditi_countlist.removeAll()
                    funccount = 0
                    answercount = 0
                    create_flaglist.removeAll()
                    homehide = true
                }
                .fullScreenCover(isPresented: $homehide){
                    SerectGameView()
                }
                .fullScreenCover(isPresented: $hide){
                    TamaView()
                }
            }
        }else{
            VStack{
                Text("正解！！")
                Button("ホームヘ戻る") {
                    answerlist.removeAll()
                    iro_count = 0
                    iroanditi_count = 0
                    iro_countlist.removeAll()
                    iroanditi_countlist.removeAll()
                    funccount = 0
                    answercount = 0
                    create_flaglist.removeAll()
                    homehide = true
                }
                .fullScreenCover(isPresented: $homehide){
                    SerectGameView()
                }
            }
        }
    }
}

struct TamaAnswerView_Previews: PreviewProvider {
    static var previews: some View {
        TamaAnswerView()
    }
}
