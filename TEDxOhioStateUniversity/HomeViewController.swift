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
    
    @IBOutlet weak var liveButton: UIButton!
    
    @IBOutlet weak var importantInfoLabel: UILabel!
    
    
    @IBAction func liveButtonClicked(sender: AnyObject) {
        self.performSegueWithIdentifier("livestreamSegue", sender: self)
    }
    
    
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
        
        self.importantInfoLabel.text = "Doors open in the Ohio Union Archie Griffin Ballroom East at 11:00AM for check-in and a pre-event reception (with refreshments). You are required to check-in at the Ohio Union. The first 500 audience members who check-in will receive a surprise gift!\n\nFor those who are driving to campus, parking is available in the Ohio Union parking garages. The Ohio Union South Garage is preferred. Wheel-chair Accessible Parking is located in front of Mershon Auditorium and in both Ohio Union Garages. Please check with CampusParc for rates."
        
        self.liveButton.backgroundColor = uicolorFromHex(0xe62b1e)
        self.liveButton.layer.cornerRadius = 5
        self.liveButton.layer.borderWidth = 1
        self.liveButton.layer.borderColor = uicolorFromHex(0xe62b1e).CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func uicolorFromHex(rgbValue:UInt32)->UIColor{
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:1.0)
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
