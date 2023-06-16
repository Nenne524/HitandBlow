//
//  AnswerDisplayView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/17.
//

import SwiftUI

struct AnswerDisplayView: View {
    var body: some View {
        ForEach(create_flaglist.indices, id: \.self){i in
            VStack{
                HStack{
                    Text("色のみ正解:")
                    Text(String(iro_countlist[i]))
                    Text(" 色と位置が正解:")
                    Text(String(iroanditi_countlist[i]))
                }
                HStack{
                    let tuple = create_flaglist[i]
                    ForEach(0..<4){k in
                        switch tuple[k]{
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
                }
            }
        }
    }
}

struct AnswerDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerDisplayView()
    }
}
