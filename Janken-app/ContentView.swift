//
//  ContentView.swift
//  Janken-app
//
//  Created by kuehar on 2021/06/14.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0

    var body: some View {

        VStack {
            Spacer()
            // 画像表示
            if answerNumber == 0 {
                Text("おい、ジャンケンしようぜ")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // グーの処理を記述
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // 画像に合致するテキスト
                Text("グー")
                
            } else if answerNumber == 2 {
                // チョキの処理を記述
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // 画像に合致するテキスト
                Text("チョキ")
                    .padding(.bottom)
                
            } else {
                // パーの処理を記述
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // 画像に合致するテキスト
                Text("パー")
                    .padding(.bottom)
            }
            // ボタンを押した時の動き
            Button(action: {
                // 乱数生成
                var newAnswerNumber = 0
                repeat{
                 newAnswerNumber = Int.random(in: 1...3)
                }while  answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber

            }){
                Text("ジャンケンしよう")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
