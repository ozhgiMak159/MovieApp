//
//  MainTableViewCell.swift
//  MovieApp
//
//  Created by Maksim  on 04.07.2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    private let collectionView: UICollectionView = {
        // Как задать высоту ячейки
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 180, height: 280)
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(ContentCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setDelegate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.addSubview(collectionView)
        setConstraint()
        collectionView.reloadData()
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        
        ])
    }
    
}

extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ContentCollectionViewCell
        cell.posterImage.image = UIImage(named: "Стетем")
      //  cell.ratingView.layer.cornerRadius = 20
       // cell.ratingView.clipsToBounds = true
        return cell
    }
    

}
