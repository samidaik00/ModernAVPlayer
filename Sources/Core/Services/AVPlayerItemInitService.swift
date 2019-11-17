//
//  AVPlayerItemInitService.swift
//  ModernAVPlayer
//
//  Created by ankierman on 17/11/2019.
//

import AVFoundation
import Foundation

//sourcery: AutoMockable
protocol AVPlayerItemInitService {
    func getItem(media: PlayerMedia, loadedAssetKeys: [String]) -> AVPlayerItem
}

struct ModernAVPlayerItemInitService: AVPlayerItemInitService {

    // MARK: - Output

    func getItem(media: PlayerMedia, loadedAssetKeys: [String]) -> AVPlayerItem {
        let asset = AVURLAsset(url: media.url, options: media.assetOptions)
        return AVPlayerItem(asset: asset, automaticallyLoadedAssetKeys: loadedAssetKeys)
    }
}
