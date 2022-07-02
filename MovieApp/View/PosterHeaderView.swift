//
//  PosterHeaderView.swift
//  MovieApp
//
//  Created by Maksim  on 02.07.2022.
//

import UIKit

class PosterHeaderView: UIView {

    private let posterImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "obi")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(posterImageView)
        setupGradient()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = bounds
        
    }
    
    private func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
    }
    

}
