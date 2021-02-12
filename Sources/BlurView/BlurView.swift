import SwiftUI

@available(iOS 13, *)
public struct BlurView: UIViewRepresentable {
    public let style: UIBlurEffect.Style
    
    public init(_ style: UIBlurEffect.Style = .regular) {
        self.style = style
    }

    public func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear

        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)

        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            ])

        return view
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
    }
}
