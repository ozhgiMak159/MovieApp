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
        scroll.bounces = false
        scroll.delaysContentTouches = false
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
    
    private let closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(systemName: "chevron.left.circle.fill"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(closeButtonTapp), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let informationMovies: UILabel = {
       let label = UILabel()
        label.text = "Грузовики лос-анджелесской инкассаторской компании Fortico Security часто подвергаются нападениям, и во время очередного ограбления погибают оба охранника."
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let playButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Play Trailer", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .red
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let gradientLayer = CAGradientLayer()
    
    private let informationMovie = InformationMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setAddView()
        setConstraint()
    }
    
    private func setupGradient() {
        imagePoster.layer.addSublayer(gradientLayer)
        gradientLayer.frame = CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height / 3.5)
        gradientLayer.cornerRadius = 30
        gradientLayer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        gradientLayer.locations = [0.01, 0.3]
        gradientLayer.colors = [
            UIColor.systemGray.withAlphaComponent(0.97).cgColor,
            UIColor.systemBackground.cgColor,
        ]
    }
    
    @objc private func closeButtonTapp() {
        print("Close")
    }
    
    private func setAddView() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(imagePoster)
        scrollView.addSubview(closeButton)
        scrollView.addSubview(informationMovie)
        scrollView.addSubview(informationMovies)
        scrollView.addSubview(playButton)
        setupGradient()
    }
    
    private func setConstraint() {
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            imagePoster.topAnchor.constraint(equalTo: view.topAnchor),
            imagePoster.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            imagePoster.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: imagePoster.topAnchor, constant: 40),
            closeButton.leadingAnchor.constraint(equalTo: imagePoster.leadingAnchor, constant: 20),
            closeButton.heightAnchor.constraint(equalToConstant: 35),
            closeButton.widthAnchor.constraint(equalToConstant: 35)
        ])
        
        NSLayoutConstraint.activate([
            informationMovie.topAnchor.constraint(equalTo: imagePoster.topAnchor, constant: view.frame.height / 2),
            informationMovie.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            informationMovies.topAnchor.constraint(equalTo: informationMovie.bottomAnchor, constant: 120),
            informationMovies.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            informationMovies.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: informationMovies.bottomAnchor, constant: 100),
            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 160),
            playButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
}
