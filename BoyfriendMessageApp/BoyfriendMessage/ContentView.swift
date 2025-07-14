//
//  ContentView.swift
//  BoyfriendMessage
//
//  Created by haru on 2025/07/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("通知をおくるよ"){
                let content = UNMutableNotificationContent()
                content.title = "ボタンを押しましたね？？"
                content.body = "おすんじゃないよ！"
                content.sound = .default
                content.badge = 1
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats:false)
                
                let request = UNNotificationRequest(
                    identifier: UUID().uuidString,
                    content: content,
                    trigger: trigger
                )
                
                UNUserNotificationCenter.current().add(request) { error in
                    if let error = error {
                        print("通知エラー: \(error.localizedDescription)")
                    } else {
                        print("通知予約完了！（5秒後）")
                    }
                }


            }
        }
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}
