//
//  HomeViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 1/26/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: Variables
    
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var headlineLabel: UILabel!
    
    @IBAction func webButtonPressed(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"http://tedx.osu.edu")!)
    }
    
    @IBAction func facebookButtonPressed(sender: AnyObject) {
        
        if (UIApplication.sharedApplication().canOpenURL(NSURL(string:"fb://facewebmodal/f?href=https://www.facebook.com/TEDxOhioStateU")!)){
            UIApplication.sharedApplication().openURL(NSURL(string:"fb://facewebmodal/f?href=https://www.facebook.com/TEDxOhioStateU")!)
        } else{
            UIApplication.sharedApplication().openURL(NSURL(string:"https://www.facebook.com/TEDxOhioStateU/")!)
        }
        
    }
    
    @IBAction func twitterButtonPressed(sender: AnyObject) {
        
        if (UIApplication.sharedApplication().canOpenURL(NSURL(string:"twitter://user?screen_name=TEDxOhioStateU")!)){
            UIApplication.sharedApplication().openURL(NSURL(string:"twitter://user?screen_name=TEDxOhioStateU")!)
        } else{
            UIApplication.sharedApplication().openURL(NSURL(string:"http://twitter.com/TEDxOhioStateU")!)
        }
        
    }
    
    @IBAction func instaButtonPressed(sender: AnyObject) {
        
        if (UIApplication.sharedApplication().canOpenURL(NSURL(string:"instagram://user?username=tedxohiostateu")!)){
            UIApplication.sharedApplication().openURL(NSURL(string:"instagram://user?username=tedxohiostateu")!)
        } else{
            UIApplication.sharedApplication().openURL(NSURL(string:"http://instagram.com/tedxohiostateu")!)
        }
        
    }
    
    @IBAction func youtubeButtonPressed(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string:"https://www.youtube.com/watch?v=XSvhWs2M9JI&list=PLB18FCCC5AD700BFB")!)
        
    }
    
    // MARK: Initialize
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        //tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon-home"), tag: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        let width = self.view.frame.size.width
        self.bannerImageHeightConstraint.constant = width/764 * 366
        
        self.headlineLabel.text = "Join TEDxOhioStateUniversity for our 5th annual event. This year's theme, Reconstructing Reality, will feature students, faculty, staff, and alumni as speakers and performers who will inspire and challenge our concepts of science, technology, history, and life."
        //self.headlineLabel.textColor = uicolorFromHex(0xe62b1e)
        
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
