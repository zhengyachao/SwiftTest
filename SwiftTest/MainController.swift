//
//  MainController.swift
//  SwiftTest
//
//  Created by ifreeplay on 2017/8/11.
//  Copyright © 2017年 ifreeplay. All rights reserved.
//

import UIKit

class MainController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false  //避免受默认的半透明色影响，关闭
        tabBar.tintColor = UIColor.orange
        
        addChildViewControllers()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     * 添加子控制器
     */
    private func addChildViewControllers()
    {
        addChildViewController(childController: HomeTableViewController(), title: "首页", imageName: "tabbar_home", selectedImage: "tabbar_home_highlighted")
        addChildViewController(childController: MessageTableViewController(), title: "视频", imageName: "tb_market", selectedImage: "tb_market_hover")
        addChildViewController(childController: DiscoverTableViewController(), title: "微头条", imageName: "tb_message", selectedImage: "tb_message_hover")
        addChildViewController(childController: MineViewController(), title: "我页", imageName: "tb_mine", selectedImage: "tb_mine_hover")
    }
    
    private func addChildViewController(childController: UIViewController, title: String, imageName: String, selectedImage: String)
    {
        childController.tabBarItem.image = UIImage(named: imageName)
        // 设置UIImage的渲染模式：withRenderingMode
        childController.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        
        childController.title = title
        let navC = UINavigationController(rootViewController: childController)
        addChildViewController(navC)
    }

    
    
}
