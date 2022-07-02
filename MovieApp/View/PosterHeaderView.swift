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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(posterImageView)
        posterImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addGradient() {
        
    }
    

}
