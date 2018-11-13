//
//  TabViewController.swift
//  classScheduleApp
//
//  Created by 篠原立樹 on 2018/11/13.
//  Copyright © 2018 Ostrich. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        let viewController = UIStoryboard(name: "ViewController", bundle: nil).instantiateInitialViewController()!
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        let navigationController = UINavigationController(rootViewController: viewController)
        self.addChild(navigationController)
    }
}
