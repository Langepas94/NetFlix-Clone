//
//  ViewController.swift
//  NetFlix Clone
//
//  Created by Артём Тюрморезов on 17.10.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        // Создали 4 вью и присвоили для каждой отдельной кнопки навигейшн вью
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        // присвоили изображения
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        // цвет отдельной иконки таббара
        tabBar.tintColor = .label
        
        // заголовки элементов таббара
        vc1.title = "Home"
        vc2.title = "Coming soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        // присвоили массив навигейшнвью и анимированное переключение между ними
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }


}

