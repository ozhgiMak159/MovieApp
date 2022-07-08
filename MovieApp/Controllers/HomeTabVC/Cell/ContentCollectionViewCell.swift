//
//  ContentCollectionViewCell.swift
//  MovieApp
//
//  Created by Maksim  on 05.07.2022.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    
    private let ratingView = CircleRating()
    
    let posterImage: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    let ratingLabel: UILabel = {
       let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(posterImage)
        posterImage.addSubview(ratingView)
        ratingView.addSubview(ratingLabel)
        posterImage.frame = bounds
        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            ratingLabel.centerXAnchor.constraint(equalTo: ratingView.centerXAnchor, constant: 30),
            ratingLabel.centerYAnchor.constraint(equalTo: ratingView.centerYAnchor, constant: 30),
        ])
    }
    
}
