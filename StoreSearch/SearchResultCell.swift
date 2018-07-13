//
//  SearchResultCell.swift
//  StoreSearch
//
//  Created by Michael Vilabrera on 4/16/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artworkImageView: UIImageView!
    
    var downloadTask: URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let selectedView = UIView(frame: CGRect.zero)
        selectedView.backgroundColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 0.5)
        selectedBackgroundView = selectedView
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        downloadTask?.cancel()
        downloadTask = nil
    }
    
    func configure(for result: SearchResult) {
        nameLabel.text = result.name
        if result.artistName.isEmpty {
            artistNameLabel.text = NSLocalizedString("Unknown", comment: "artist name label")
        } else {
            artistNameLabel.text = String(format: NSLocalizedString("%@ (%@)", comment: "format for artist name"), result.artistName, result.type)
        }
        artworkImageView.image = UIImage(named: "Placeholder")
        if let smallURL = URL(string: result.imageSmall) {
            downloadTask = artworkImageView.loadImage(url: smallURL)
        }
    }
}
