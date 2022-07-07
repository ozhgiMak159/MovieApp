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
        return image
    }()
    
    private let ratingView = CircleRating()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(posterImage)
        posterImage.addSubview(ratingView)
        posterImage.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
