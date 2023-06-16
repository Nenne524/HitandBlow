//
//  OmikuziView.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/03/11.
//

import SwiftUI

struct OmikuziView: View {
    @State var buttonText = "おみくじ"
    @State var hide = false
    var body: some View {
        VStack {
            Button(buttonText) {
                hide = true
            }
        }
        .fullScreenCover(isPresented: $hide){
            OmikuziResultView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OmikuziView()
    }
}
