//
//  AboutViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 1/26/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit
import Static

class AboutViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon-info"), tag: 2)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "About"
        
        //tabBarItem.image = tabBarItem.image.imageWithColor(UIColor.yellowColor()).imageWithRenderingMode(.AlwaysOriginal)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   

}
