//
//  AnswerandJudge.swift
//  omikuzi
//
//  Created by 山根愛実 on 2023/05/17.
//

import Foundation

var answerlist: [Int] = []
var iro_count: Int = 0
var iro_countlist: [Int] = []
var iroanditi_count: Int = 0
var iroanditi_countlist: [Int] = []
var funccount: Int = 0
var answercount: Int = 0
var create_flaglist: [[Int]] = []

//正解生成
func generateAnswer() {
    var randomNum: Int = 0

    while(answerlist.count < 4){
        randomNum = Int.random(in: 0..<6)
        if answerlist.contains(randomNum) == false{
            answerlist.append(randomNum)
        }
    }
    
    print(answerlist)
    funccount = 1
}

//正誤判定
func judge(flaglist:[Int]){
    iro_count = 0
    iroanditi_count = 0
    for i in 0..<4{
        for k in 0..<4{
            if answerlist[i] == flaglist[k]{
                iro_count += 1
                if i == k{
                    iroanditi_count += 1
                }
                break
            }
        }
    }
    iro_countlist.append(iro_count)
    iroanditi_countlist.append(iroanditi_count)
}

//globalflaglist生成
func createflaglist(flaglist:[Int]){
    let flagtuple: [Int] = [flaglist[0],flaglist[1],flaglist[2],flaglist[3]]
    create_flaglist.append(flagtuple)
}
