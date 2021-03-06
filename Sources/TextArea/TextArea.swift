import SwiftUI
import StringExtension

@available(iOS 14, *)
public struct TextArea: View {
    private let placeholder: String
    @Binding public var text: String
    
    public init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    public var body: some View {
        TextEditor(text: $text)
            .background(
                HStack(alignment: .top) {
                    text.isBlank ? Text(placeholder) : Text("")
                    Spacer()
                }
                .padding(.leading, 5)
                .foregroundColor(Color.primary.opacity(0.25))
            )
            .padding(EdgeInsets(top: 0, leading: -5, bottom: 0, trailing: 0))
    }
}
