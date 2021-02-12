import WebKit
import SwiftUI

@available(iOS 14, *)
public struct WebView: UIViewRepresentable {
    public let html: String
    public let zoom: CGFloat
    
    public init(html: String, zoom: CGFloat = 5) {
        self.html = html
        self.zoom = zoom
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.pageZoom = zoom
        return webView
    }
    
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(html, baseURL: nil)
    }
}

