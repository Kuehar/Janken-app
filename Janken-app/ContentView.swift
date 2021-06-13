//
//  ContentView.swift
//  Janken-app
//
//  Created by kuehar on 2021/06/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        
        VStack {
            // 画像表示
            Image("gu")
                .resizable()
                .aspectRatio(contentMode: .fit)
            // 画像に合致するテキスト
            Text("グー")
            
            // ボタンを押した時の動き
            Button(action: {
                print("タップしましたね!")
            }){
                Text("ジャンケンしよう")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
