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
        
        setViewControllers(
        [],
        animated: true)
    }
}

