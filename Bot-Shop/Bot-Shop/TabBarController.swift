//
//  TabBarController.swift
//  Bot-Shop
//
//  Created by George Ceja on 4/16/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!

    override func viewDidLoad() {
        self.delegate = self
        super.viewDidLoad()
        
        setupViewControllers()
        setupTabBarIcons()
    }
    
    func setupTabBarIcons(){

        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]

        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center

        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
    }
    
    func setupViewControllers(){

        let newBoxVC = NewOrderViewController()
        let navController1 = UINavigationController(rootViewController:newBoxVC)
        newBoxVC.tabBarItem = UITabBarItem(title: "New", image: UIImage(named: "tab-box"), tag: 0)

        let pastBoxesVC = PastOrderViewController()
        let navController2 = UINavigationController(rootViewController:pastBoxesVC)
        pastBoxesVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "tab-history"), tag: 1)


        viewControllers = [navController1, navController2]

    }

}
