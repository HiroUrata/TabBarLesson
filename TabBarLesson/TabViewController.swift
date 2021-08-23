//
//  TabViewController.swift
//  TabBarLesson
//
//  Created by UrataHiroki on 2021/08/23.
//

import UIKit

class TabViewController: UITabBarController,UITabBarControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBarController?.delegate = self
        
        tabBar.barTintColor = .systemIndigo
        tabBar.unselectedItemTintColor = .white
        tabBar.tintColor = .systemGreen
        
        tabBar.layer.borderWidth = 1.0
        tabBar.layer.borderColor = UIColor.systemGreen.cgColor
        
        tabBar.layer.cornerRadius = 45.0
        tabBar.layer.masksToBounds = true
        
        
        
    }
    
    

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {

        if item.selectedImage == UIImage(systemName: "arrow.up.and.down.circle") {

            UITabBar.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {self.tabBar.frame.origin.y = self.tabBar.frame.origin.y + self.tabBar.frame.size.height}, completion: nil)

            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

                UITabBar.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {self.tabBar.frame.origin.y = self.tabBar.frame.origin.y - self.tabBar.frame.size.height}, completion: nil)

            }

        }

      }
        
    
    
}
