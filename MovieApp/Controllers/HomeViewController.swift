//
//  HomeViewController.swift
//  MovieApp
//
//  Created by Maksim  on 02.07.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let identifier = "Cell"
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.showsVerticalScrollIndicator = false
        tableView.bounces = false
        tableView.largeContentTitle = "Home"
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
        subViews()
        setConstraints()
        setDelegate()
    }

}

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = "Hello, World"
        
        return cell
    }
    
    
}

extension HomeViewController {
    private func setNavBar() {
        view.backgroundColor = .systemBackground
        title = "Home"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    private func subViews() {
        view.addSubview(tableView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        
        ])
    }
    
}
