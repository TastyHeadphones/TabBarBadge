//
//  ViewController.swift
//  TabBarBadge
//
//  Created by younggeo on 7/11/24.
//

import UIKit

class ViewController: UITabBarController {
    let starBadgeViewController: UIViewController = {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        vc.tabBarItem.image = UIImage(systemName: "star")?.withBadge(iconColor: .black)
        vc.tabBarItem.selectedImage = UIImage(systemName: "star")?.withBadge(iconColor: .blue)
        return vc
    }()

    let heartBadgeViewController: UIViewController = {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        vc.tabBarItem.image = UIImage(systemName: "heart")?.withBadge(iconColor: .black)
        vc.tabBarItem.selectedImage = UIImage(systemName: "heart")?.withBadge(iconColor: .blue)
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [starBadgeViewController, heartBadgeViewController]
    }
}
