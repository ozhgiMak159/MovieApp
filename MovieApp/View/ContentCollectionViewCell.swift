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
    
     let titleName: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var ratingView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(ciColor: .white).cgColor
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImage)
        posterImage.addSubview(ratingView)
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setConstraints()
        ratingView.layer.cornerRadius = ratingView.frame.height / 2
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
        
//        NSLayoutConstraint.activate([
////            titleName.topAnchor.constraint(equalTo: posterImage.topAnchor, constant: 10),
////            titleName.leadingAnchor.constraint(equalTo: posterImage.leadingAnchor, constant: 15)
//        ])
        
        NSLayoutConstraint.activate([
            ratingView.topAnchor.constraint(equalTo: posterImage.topAnchor, constant: 10),
            ratingView.leadingAnchor.constraint(equalTo: posterImage.leadingAnchor, constant: 10),
            ratingView.widthAnchor.constraint(equalToConstant: 35),
            ratingView.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        
    }
    
    
}
