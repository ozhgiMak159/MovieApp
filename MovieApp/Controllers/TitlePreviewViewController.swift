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
        view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor,
        ]
    }
    
    private func setAddView() {
        view.addSubview(imagePoster)
       // setupGradient()
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            imagePoster.topAnchor.constraint(equalTo: view.topAnchor),
            imagePoster.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            imagePoster.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6, constant: 30)
        ])
    }
    
}
