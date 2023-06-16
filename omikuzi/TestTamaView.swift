//
//  TestTamaView.swift
//  omikuzi
//

import SwiftUI

class TestFlagList: ObservableObject {
    @Published var flaglist: [Int] = []
    @Published var randomNum: Int = 0
    @Published var answerlist: [Int] = []
    @Published var iro_count: Int = 0
    @Published var iroanditi_count: Int = 0
    
    //正解生成
    func generateRandomNumber() {
        for _ in 0..<4 {
            randomNum = Int.random(in: 1..<7)
            answerlist.append(randomNum)
        }
    }
    //正誤判定
    func judge(){
        for i in 0..<4{
            for k in 0..<4{
                if flaglist[i] == answerlist[k]{
                    iro_count += 1
                    if i == k{
                        iroanditi_count += 1
                    }
                }
            }
        }
    }
}

struct TestTamaView: View {
@State var homehide = false
@State var hide = false
@StateObject var flagdata = TestFlagList()
let colorlist = [Color.red,Color.blue,Color.green,Color.orange,Color.yellow,Color.purple]
var body: some View {
        VStack {
            // 回答
            HStack {
                ForEach(flagdata.flaglist.indices, id: \.self) { i in
                    let flag = flagdata.flaglist[i]
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
                if flagdata.flaglist.count < 4{
                    ForEach(0..<(4-flagdata.flaglist.count), id: \.self){k in
                        white()
                    }
                }
            }
            
            if flagdata.flaglist.count == 4 {
                Button("回答") {
                    flagdata.generateRandomNumber()
                    flagdata.judge()
                    print(flagdata.iro_count)
                    hide = true
                }
                //選択
            } else {
                HStack{
                    ForEach(colorlist.indices, id: \.self){color_index in
                        let color = colorlist[color_index]
                        Button(action:{
                            flagdata.flaglist.append(color_index)
                        }){
                            Circle()
                                .foregroundColor(color)
                                .frame(width:40, height: 40)
                        }
                    }
                }
            }
            
            // ホームヘ戻る
            Button("ホームヘ戻る") {
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

struct TestTamaView_Previews: PreviewProvider {
    static var previews: some View {
        TestTamaView()
    }
}

