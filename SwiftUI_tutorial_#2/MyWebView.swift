//
//  MyWebView.swift
//  SwiftUI_tutorial_#2
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI
import WebKit

// uiket 의 uiview를 사용할있도록 한다.
struct MyWebView: UIViewRepresentable {
    var urlToLoad : String
    
    init(_ _urlToLoad: String) {
        urlToLoad = _urlToLoad
    }
    
    
    // ui view 만들기
    func makeUIView(context: Context) -> some WKWebView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰 로드
        webview.load(URLRequest(url: url))
        
        return webview
    }
    // update ui view
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView("https://www.naver.com")
    }
}
