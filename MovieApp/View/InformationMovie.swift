//
//  InformationMovie.swift
//  MovieApp
//
//  Created by Maksim  on 12.07.2022.
//

import UIKit

class InformationMovie: UIView {
    
    private let nameMovie: UILabel = {
       let movieName = UILabel()
        movieName.text = "Гнев Человеческий"
        movieName.font = .systemFont(ofSize: 26)
        movieName.textAlignment = .center
        movieName.translatesAutoresizingMaskIntoConstraints = false
        return movieName
    }()
    
    private let ageMovie: UILabel = {
       let movieAge = UILabel()
        movieAge.text = "2021"
        movieAge.font = .systemFont(ofSize: 15)
        movieAge.translatesAutoresizingMaskIntoConstraints = false
        return movieAge
    }()
    
    private let movieStudio: UILabel = {
       let studioMovie = UILabel()
        studioMovie.text = "Warner Brothers"
        studioMovie.font = .systemFont(ofSize: 15)
        studioMovie.translatesAutoresizingMaskIntoConstraints = false
        return studioMovie
    }()
    
    private let timeMove: UILabel = {
       let label = UILabel()
        label.text = "2 h 35 min"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ratingMovie: UILabel = {
       let label = UILabel()
        label.text = "- - - - - - - - 7.2"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    private let informationMovie: UILabel = {
//       let label = UILabel()
//        label.text = "Грузовики лос-анджелесской инкассаторской компании Fortico Security часто подвергаются нападениям, и во время очередного ограбления погибают оба охранника."
//        label.numberOfLines = 0
//        label.font = .systemFont(ofSize: 18)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
        
    private var stackViewHorizon = UIStackView()
    private var stackViewVertical = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setAddSubview()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setAddSubview() {
        addSubview(nameMovie)
        translatesAutoresizingMaskIntoConstraints = false
        
        stackViewHorizon = UIStackView(
            arrangedSubviews: [ageMovie, movieStudio, timeMove],
            axis: .horizontal,
            distribution: .equalSpacing,
            spacing: 10
        )
        
        stackViewVertical = UIStackView(
            arrangedSubviews: [stackViewHorizon, ratingMovie],
            axis: .vertical,
            distribution: .equalSpacing,
            spacing: 10)
            
        addSubview(stackViewHorizon)
        addSubview(stackViewVertical)
       // addSubview(informationMovie)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameMovie.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameMovie.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameMovie.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            stackViewHorizon.topAnchor.constraint(equalTo: nameMovie.bottomAnchor, constant: 7),
            stackViewHorizon.centerXAnchor.constraint(equalTo: nameMovie.centerXAnchor),
            stackViewHorizon.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        NSLayoutConstraint.activate([
            stackViewVertical.topAnchor.constraint(equalTo: stackViewHorizon.topAnchor, constant: 15),
            stackViewVertical.centerXAnchor.constraint(equalTo: stackViewHorizon.centerXAnchor),
            stackViewVertical.heightAnchor.constraint(equalToConstant: 45)
        ])
        
//        NSLayoutConstraint.activate([
//            informationMovie.topAnchor.constraint(equalTo: stackViewVertical.bottomAnchor, constant: 10)
//        ])
        
    }
    
}
