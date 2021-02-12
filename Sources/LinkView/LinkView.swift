import SwiftUI
import LinkPresentation

@available(iOS 13, *)
public struct LinkView: UIViewRepresentable {
    public let url: URL
    
    public init(_ url: URL) {
        self.url = url
    }

    public func makeUIView(context: Context) -> LPLinkView {
        return LPLinkView(url: url)
    }

    public func updateUIView(_ uiView: LPLinkView, context: Context) {
        if let cachedData = MetaCache.retrieve(urlString: url.absoluteString) {
            uiView.metadata = cachedData
            uiView.sizeToFit()
        } else {
            let provider = LPMetadataProvider()
            provider.startFetchingMetadata(for: url) { metadata, error in
                guard let metadata = metadata, error == nil else {
                    return
                }

                MetaCache.cache(metadata: metadata)
                
                DispatchQueue.main.async {
                    uiView.metadata = metadata
                    uiView.sizeToFit()
                }
            }
        }
    }
}

@available(iOS 13, *)
struct MetaCache {
    
    static func cache(metadata: LPLinkMetadata) {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: metadata, requiringSecureCoding: true)
            UserDefaults.standard.setValue(data, forKey: metadata.url!.absoluteString)
        } catch let error {
            print("Error saving link cache: \(error.localizedDescription)")
        }
    }

    static func retrieve(urlString: String) -> LPLinkMetadata? {
        do {
            guard let data = UserDefaults.standard.object(forKey: urlString) as? Data,
            let metadata = try NSKeyedUnarchiver.unarchivedObject(ofClass: LPLinkMetadata.self, from: data) else { return nil }
            return metadata
        } catch let error {
            print("Error retrieving link cache: \(error.localizedDescription)")
            return nil
        }
    }
}
