//
//  ImageCache.swift
//  AsyncImage
//
//  Created by Vadym Bulavin on 2/19/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//
import UIKit

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
protocol ImageCache {
    subscript(_ url: URL) -> UIImage? { get set }
}

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
struct TemporaryImageCache: ImageCache {
    private let cache: NSCache<NSURL, UIImage> = {
        let cache = NSCache<NSURL, UIImage>()
        cache.countLimit = 100 // 100 items
        cache.totalCostLimit = 1024 * 1024 * 100 // 100 MB
        return cache
    }()
    
    subscript(_ key: URL) -> UIImage? {
        get { cache.object(forKey: key as NSURL) }
        set { newValue == nil ? cache.removeObject(forKey: key as NSURL) : cache.setObject(newValue!, forKey: key as NSURL) }
    }
}