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
        
        mainVC.title = "Main"
        shoppingCartVC.title = "Shopping Cart"
        historyVC.title = "History"
        infoVC.title = "Info"

        
        
        let nav1 = UINavigationController(rootViewController: mainVC)
        let nav2 = UINavigationController(rootViewController: shoppingCartVC)
        let nav3 = UINavigationController(rootViewController: historyVC)
        let nav4 = UINavigationController(rootViewController: infoVC)

        
        setViewControllers(
        [],
        animated: true)
    }
}

