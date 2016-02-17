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
    
    @IBOutlet weak var BannerImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var headlineLabel: UILabel!
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon-info"), tag: 2)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "About"
        
        //tabBarItem.image = tabBarItem.image.imageWithColor(UIColor.yellowColor()).imageWithRenderingMode(.AlwaysOriginal)
        
        
        let width = self.view.frame.size.width
        self.BannerImageHeightConstraint.constant = width/3575 * 500
        self.headlineLabel.text = "TEDxOhioStateUniversity is a student organization at Ohio State founded in 2011 and comprises of mainly undergraduate students and university faculty. It is locally funded by various sponsors at Ohio State and within Columbus. Student members organize an annual event comprising of TED Talk videos and live speakers from the greater Ohio State University community."
        
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
