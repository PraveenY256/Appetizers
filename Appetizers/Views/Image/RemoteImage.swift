//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Praveen Yeddu on 03/03/25.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(from urlString: String) {
        NetworkManager.shared.downloadImage(from: urlString) { uiImage in
            guard let uiImage else {
                return
            }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}


struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image(.foodPlaceholder).resizable()
    }
}


struct AppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    
    var urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{
                imageLoader.load(from: urlString)
            }
    }
}
