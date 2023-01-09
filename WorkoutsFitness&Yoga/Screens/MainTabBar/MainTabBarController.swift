//
//  MainTabBarController.swift
//  WorkoutsFitness&Yoga
//
//  Created by AKIN on 9.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UINavigationController(rootViewController: HomeController())
        let vc2 = UINavigationController(rootViewController: WorkoutController())
        let vc3 = UINavigationController(rootViewController: ChallengeController())
        let vc4 = UINavigationController(rootViewController: ProfileController())
        
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "dumbbell")
        vc3.tabBarItem.image = UIImage(systemName: "trophy")
        vc4.tabBarItem.image = UIImage(systemName: "person")
        
        vc1.title = "Home"
        vc2.title = "Workout"
        vc3.title = "Chanllenge"
        vc4.title = "Profile"
        
        navigationController?.navigationBar.isHidden = true
        
        tabBar.tintColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }

}
