//
//  TamaView.swift
//  omikuzi
//

import SwiftUI

struct TamaView: View {
    @State var homehide = false
    @State var hide = false
    @State var flaglist: [Int] = []
    let colorlist = [Color.red,Color.blue,Color.green,Color.orange,Color.yellow,Color.purple]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Text("回答数：")
                        .font(.system(size: 30, weight: .bold, design: .monospaced))
                    Text(String(answercount))
                        .font(.system(size: 30, weight: .bold, design: .monospaced))
                }
                .padding(10)
                AnswerDisplayView()
                // 回答
                HStack {
                    ForEach(flaglist.indices, id: \.self) { i in
                        let flag = flaglist[i]
                        switch flag {
                        case 0:
                            red()
                        case 1:
                            blue()
                        case 2:
                            green()
                        case 3:
                            orange()
                        case 4:
                            yellow()
                        case 5:
                            purple()
                        default:
                            EmptyView()
                        }
                    }
                    //白埋め
                    if flaglist.count < 4{
                        ForEach(0..<(4-flaglist.count), id: \.self){k in
                            white()
                        }
                    }
                }
                .padding(10)
                //回答ボタン生成
                if flaglist.count == 4 {
                    Button("回答") {
                        answercount += 1
                        if funccount == 0{
                            generateAnswer()
                        }
                        judge(flaglist:flaglist)
                        createflaglist(flaglist: flaglist)
                        hide = true
                    }
                    //選択ボタン生成
                } else {
                    HStack{
                        ForEach(colorlist.indices, id: \.self){color_index in
                            let color = colorlist[color_index]
                            Button(action:{
                                flaglist.append(color_index)
                            }){
                                Circle()
                                    .foregroundColor(color)
                                    .frame(width:40, height: 40)
                            }
                        }
                    }
                }
                // やり直し
                Button("やり直す") {
                    flaglist.removeAll()
                }
                // ホームヘ戻る
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
            }
            .fullScreenCover(isPresented: $homehide) {
                SerectGameView()
            }
            .fullScreenCover(isPresented: $hide) {
                TamaAnswerView()
            }
        }
    }
}


struct TamaView_Previews: PreviewProvider {
    static var previews: some View {
        TamaView()
    }
}
