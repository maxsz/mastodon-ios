//
//  MediaPreviewTransitionItem.swift
//  Mastodon
//
//  Created by MainasuK Cirno on 2021-4-28.
//

import UIKit
import CoreData

class MediaPreviewTransitionItem: Identifiable {
    
    let id: UUID
    let source: Source
    var previewableViewController: MediaPreviewableViewController
    
    // source
    // value maybe invalid when preview paging
    var image: UIImage?
    var aspectRatio: CGSize?
    var initialFrame: CGRect? = nil
    var sourceImageView: UIImageView?

    // target
    var targetFrame: CGRect? = nil
    
    // transitioning
    var imageView: UIImageView?
    var snapshotRaw: UIView?
    var snapshotTransitioning: UIView?
    var touchOffset: CGVector = CGVector.zero

    init(id: UUID = UUID(), source: Source, previewableViewController: MediaPreviewableViewController) {
        self.id = id
        self.source = source
        self.previewableViewController = previewableViewController
    }
    
}

extension MediaPreviewTransitionItem {
    enum Source {
        case mosaic(MosaicImageViewContainer)
    }
}
