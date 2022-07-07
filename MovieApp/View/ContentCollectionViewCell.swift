//
//  ContentCollectionViewCell.swift
//  MovieApp
//
//  Created by Maksim  on 05.07.2022.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    
    let posterImage: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var ratingView = CircleRating()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImage)
        posterImage.addSubview(ratingView)
        ratingView.layer.cornerRadius = ratingView.frame.height / 2
        setConstraints()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    private func setConstraints() {
        NSLayoutConstraint.activate([
            posterImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            posterImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            posterImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            posterImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
            
        ])
    }
    
    
}
