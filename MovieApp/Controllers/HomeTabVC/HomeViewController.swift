//
//  HomeViewController.swift
//  MovieApp
//
//  Created by Maksim  on 02.07.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let identifier = "Cell"
    private let sectionTitle: [String] = [
        "Trending Movies",
        "Trending Tv",
        "Popular",
        "Upcoming Movies",
        "Top rated"
    ]
    
    private var headerView: PosterHeaderView?
  
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.showsVerticalScrollIndicator = false
        tableView.bounces = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
        subViews()
        setConstraints()
        setDelegate()
        
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: identifier)
        
    }
}

// MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        280
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffSet = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffSet
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        header.textLabel?.textColor = #colorLiteral(red: 0.9076704545, green: 0.9076704545, blue: 0.9076704545, alpha: 1)
        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLatter()
    }
}

// MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitle[section]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
      
        return cell
    }
}
// MARK: - setup HomeViewController
extension HomeViewController {
    private func setNavBar() {
        view.backgroundColor = .systemBackground

        var imageLogo = UIImage(named: "netflixLogo")
        imageLogo = imageLogo?.withRenderingMode(.alwaysOriginal)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: imageLogo,
            style: .done,
            target: self, action: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "person.circle"),
            style: .done,
            target: self, action: nil
        )
        navigationController?.navigationBar.tintColor = .white
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func subViews() {
        view.addSubview(tableView)
        headerView = PosterHeaderView(frame:CGRect(x: 0, y: 0, width: view.bounds.width, height: 480))
        tableView.tableHeaderView = headerView
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
