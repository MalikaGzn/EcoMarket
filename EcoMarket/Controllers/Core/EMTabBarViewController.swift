//
//  ViewController.swift
//  EcoMarket
//
//  Created by Malika 💕 on 17/12/23.
//

import UIKit

final class EMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }

    private func setUpTabs() {
        let mainVC = EMMainViewController()
        let shoppingCartVC = EMShoppingCartViewController()
        let historyVC = EMHistoryViewController()
        let infoVC = EMInfoViewController()
        
        mainVC.navigationItem.largeTitleDisplayMode = .automatic
        shoppingCartVC.navigationItem.largeTitleDisplayMode = .automatic
        historyVC.navigationItem.largeTitleDisplayMode = .automatic
        infoVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: mainVC)
        let nav2 = UINavigationController(rootViewController: shoppingCartVC)
        let nav3 = UINavigationController(rootViewController: historyVC)
        let nav4 = UINavigationController(rootViewController: infoVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Main",
                                       image: UIImage(systemName: "house") ,
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Shopping Cart",
                                       image: UIImage(systemName: "bag") ,
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "History",
                                       image: UIImage(systemName: "clock") ,
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Info",
                                       image: UIImage(systemName: "info.circle") ,
                                       tag: 4)

        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
        [nav1, nav2, nav3, nav4],
        animated: true)
    }
}

