//
//  TamaButtonView.swift
//  omikuzi
//

import SwiftUI

class FlagList: ObservableObject {
    @Published var flaglist: [Int] = []
    @Published var indexnum: Int = 0
}

struct TamaButtonView: View {
    @StateObject private var flagdata = FlagList()
    var body: some View {
        HStack{
            //赤ボタン
            Button(action:{flagdata.flaglist.append(1)
                flagdata.indexnum += 1
                print(flagdata.indexnum)
            }){
                Circle()
                    .foregroundColor(Color.red)
                    .frame(width:40, height: 40)
            }
            //青ボタン
            Button(action: {flagdata.flaglist.append(2)
                flagdata.indexnum += 1
            }){
                Circle()
                    .foregroundColor(Color.blue)
                    .frame(width:40, height: 40)
            }
            //緑ボタン
            Button(action: {flagdata.flaglist.append(3)
                flagdata.indexnum += 1
            }){
                Circle()
                    .foregroundColor(Color.green)
                    .frame(width:40, height: 40)
            }
            //オレンジボタン
            Button(action: {flagdata.flaglist.append(4)
                print(flagdata.flaglist)
                flagdata.indexnum += 1
            }){
                Circle()
                    .foregroundColor(Color.orange)
                    .frame(width:40, height: 40)
            }
            //黄色ボタン
            Button(action: {flagdata.flaglist.append(5)
                flagdata.indexnum += 1
            }){
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width:40, height: 40)
            }
            //紫ボタン
            Button(action: {flagdata.flaglist.append(6)
                flagdata.indexnum += 1
            }){
                Circle()
                    .foregroundColor(Color.purple)
                    .frame(width:40, height: 40)
            }
        }
    }
}
struct TamaButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TamaButtonView()
            .environmentObject(FlagList()) // FlagList オブジェクトを提供する
    }
}
