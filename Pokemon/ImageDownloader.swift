//
//  ImageDownloader.swift
//  Pokemon
//
//  Created by Wenxuan Chen on 2/16/23.
//

import UIKit

protocol ImageDownloadable {
    func loadImage(url: String, completion: ((UIImage?) -> Void)?)
    func cancel()
}

final class ImageDownloader: ImageDownloadable {
    func loadImage(url: String, completion: ((UIImage?) -> Void)?) {
    }
    
    func cancel() {
    }
}
