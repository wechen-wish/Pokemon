//
//  ImageDownloader.swift
//  Pokemon
//
//  Created by Wenxuan Chen on 2/16/23.
//

import UIKit

// official artwork: https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/{id}.png

protocol ImageDownloadable {
    func loadImage(url: String, completion: ((UIImage?) -> Void)?)
}

final class ImageDownloader: ImageDownloadable {
    func loadImage(url: String, completion: ((UIImage?) -> Void)?) {
    }
}
