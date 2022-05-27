//
//  ContentView.swift
//  SwiftUI_tutorial_#2
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination: MyWebView("https://www.naver.com")) {
                    Text("Naver")
                }
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .padding(10)
                .background(Color.green)
                .cornerRadius(15)
                
                NavigationLink(destination: MyWebView("https://www.daum.net")) {
                    Text("Daum")
                }
                .font(.system(size: 30))
                .padding(10)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(15)
                
                NavigationLink(destination: MyWebView("https://www.google.com")) {
                    Text("Google")
                }
                .font(.system(size: 30))
                .padding(10)
                .background(Color.gray)
                .foregroundColor(Color.black)
                .cornerRadius(15)
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
