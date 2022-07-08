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
        imageView.contentMode = .scaleAspectFill
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
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
    }
    
    private func setAddView() {
        view.addSubview(imagePoster)
        setupGradient()
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            imagePoster.topAnchor.constraint(equalTo: view.topAnchor),
            imagePoster.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imagePoster.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imagePoster.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -290),
           
        ])
    }
    
}
