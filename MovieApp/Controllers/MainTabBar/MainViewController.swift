//
//  MainViewController.swift
//  MovieApp
//
//  Created by Maksim  on 02.07.2022.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setupItems()
    }
    
    private func setupTabBar() {
        tabBar.backgroundColor = #colorLiteral(red: 0.1411685311, green: 0.1457938763, blue: 0.1374607567, alpha: 1)
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.3392201259, green: 0.3392201259, blue: 0.3392201259, alpha: 1)
    }
    
    private func setupItems() {
        let homeVc = UINavigationController(rootViewController: HomeViewController())
        let upcomingVc = UINavigationController(rootViewController: UpcomingViewController())
        let searchVc = UINavigationController(rootViewController: SearchViewController())
        let downloadVc = UINavigationController(rootViewController: DownloadsViewController())
        
        setViewControllers([homeVc, upcomingVc, searchVc,downloadVc], animated: true)
        
        homeVc.tabBarItem.image = UIImage(systemName: "house")
        upcomingVc.tabBarItem.image = UIImage(systemName: "play.circle")
        searchVc.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadVc.tabBarItem.image = UIImage(systemName: "square.and.arrow.down")
        
        homeVc.title = "Home"
        upcomingVc.title = "Upcoming"
        searchVc.title = "Top Search"
        downloadVc.title = "Downloads"
    }


}

