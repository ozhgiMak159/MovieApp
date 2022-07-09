//
//  TitlePreviewViewController.swift
//  MovieApp
//
//  Created by Maksim  on 08.07.2022.
//

import UIKit

class TitlePreviewViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
       let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private var imagePoster: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "Стетем")
        imageView.contentMode = .redraw
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setAddView()
        setConstraint()
    }
    
    private func setupGradient() {
        imagePoster.layer.addSublayer(gradientLayer)
        gradientLayer.frame = CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: 250)
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0.8)
//        gradientLayer.endPoint = CGPoint(x: 0.8, y: 0.2)
       
        gradientLayer.locations = [0.02, 0.35]
       
        
        
        gradientLayer.colors = [
            UIColor.systemGray.cgColor,
            UIColor.systemBackground.cgColor,
        ]
        
    }
    
    
//    private func addGradient() {
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 9)
//        gradientLayer.endPoint = CGPoint(x: 2, y: 2)
//        gradientLayer.frame = view.bounds
//        imagePoster.addSubview(gradientLayer)
//    }
    
    
    
    
    private func setAddView() {
        setupGradient()
        view.addSubview(imagePoster)
       // addGradient()
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            imagePoster.topAnchor.constraint(equalTo: view.topAnchor),
            imagePoster.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            imagePoster.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6, constant: 30)
        ])
    }
    
}
