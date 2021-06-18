//
//  ImageCacheKeys.swift
//  TestSwiftWidgets
//
//  Created by Ome Asraf on 6/18/21.
//

import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
struct ImageCacheKey: EnvironmentKey {
    static let defaultValue: ImageCache = TemporaryImageCache()
}

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
    var imageCache: ImageCache {
        get { self[ImageCacheKey.self] }
        set { self[ImageCacheKey.self] = newValue }
    }
}
