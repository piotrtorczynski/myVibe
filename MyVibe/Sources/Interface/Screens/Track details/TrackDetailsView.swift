//
//  TrackDetailsView.swift
//  MyVibe
//
//  Created by Piotr Torczyński on 27/10/2017.
//  Copyright © 2017 SmartApps. All rights reserved.
//

import UIKit

final class TrackDetailsView: View {
    private(set) lazy var imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = #imageLiteral(resourceName: "cover-default")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode =  .scaleToFill
        return imageView
    }()
    
    private(set) lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 17)
        return titleLabel
    }()
    
    private(set) lazy var stylesLabel: UILabel = {
        let stylesLabel = UILabel()
        stylesLabel.translatesAutoresizingMaskIntoConstraints = false
        stylesLabel.font = .systemFont(ofSize: 13)
        stylesLabel.numberOfLines = 0
        return stylesLabel
    }()
 
    private(set) lazy var yearLabel: UILabel = {
        let typeLabel = UILabel()
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        return typeLabel
    }()
    
    private(set) lazy var artistsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        button.setTitleColor(.purple, for: .normal)
        button.setTitle(.localized("albums.artist_button.title"), for: .normal)
        return button
    }()
    
    override func setupViewHierarchy() {
        super.setupViewHierarchy()
        [imageView, titleLabel, stylesLabel, yearLabel, artistsButton].forEach(addSubview)
    }
    
    override func setupLayoutConstraints() {
        super.setupLayoutConstraints()
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 8),
            imageView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 64 + 8),
            imageView.widthAnchor.constraint(equalToConstant: 180),
            imageView.heightAnchor.constraint(equalToConstant: 180),
            
            yearLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8),
            yearLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            yearLabel.topAnchor.constraint(equalTo: imageView.centerYAnchor),
            
            titleLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            
            stylesLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 8),
            stylesLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            stylesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            
            artistsButton.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 8),
            artistsButton.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            artistsButton.topAnchor.constraint(equalTo: stylesLabel.bottomAnchor, constant: 8)
        ])
    }
}
