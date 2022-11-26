//
//  ContentView.swift
//  SwiftUI-Spacer-Image-modifier-App
//
//  Created by 近藤米功 on 2022/11/26.
//

import SwiftUI

struct ContentView: View {

    @State private var message = "何も押されていません"
    @State private var answerText = "正解を見る"

    var body: some View {
        VStack {
            Text("これは誰でしょう？")
                .font(.title) // 文字を大きくする
                .frame(maxWidth: .infinity) // フレームを横幅一杯に
                .frame(height: 100) // フレームの高さを100に
                .background(Color.red)
                .foregroundColor(Color.white) // 文字の色を白に
                .padding(.top)
            Spacer()
            Image("face")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Spacer()
            Text(message)
                .padding(.bottom)
            Button("優しいご飯") {
                message = "優しいご飯"
            }.padding(.bottom)

            Button("けものご飯", action: {
                message = "けものご飯"
            }).padding(.bottom)

            Button(answerText) {
                answerText = "けものご飯"
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
