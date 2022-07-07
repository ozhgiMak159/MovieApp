//
//  CircleRating.swift
//  MovieApp
//
//  Created by Maksim  on 07.07.2022.
//

import UIKit

class CircleRating: UIView {

  private  var ratingView: UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(ciColor: .white).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(ratingView)
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        ratingView.layer.cornerRadius = ratingView.frame.height / 2
    }
    
    private func setupConstraint() {
        NSLayoutConstraint.activate([
            ratingView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            ratingView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            ratingView.widthAnchor.constraint(equalToConstant: 35),
            ratingView.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
}


