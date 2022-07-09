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
        imageView.contentMode = .top
        imageView.clipsToBounds = true
       // imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setAddView()
        setConstraint()
        
//       // imagePoster.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2)
//        print(imagePoster.frame.height)
//        print(imagePoster.frame.width)
    }
    
    private func setupGradient() {
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor,
        ]
    }
    
    private func setAddView() {
        view.addSubview(imagePoster)
      //  setupGradient()
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            imagePoster.topAnchor.constraint(equalTo: view.topAnchor),
            imagePoster.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imagePoster.trailingAnchor.constraint(equalTo: view.trailingAnchor),
           // imagePoster.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
          //  imagePoster.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            imagePoster.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5, constant: 70)
          
           
        ])
    }
    
}
