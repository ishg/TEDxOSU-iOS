//
//  AboutViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 1/26/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit
import Static

class AboutViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var BannerImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var tedLabel: UILabel!
    @IBOutlet weak var tedxLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    var items: [String] = ["We", "Heart", "Swift"]
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon-info"), tag: 2)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "About"
        
        //tabBarItem.image = tabBarItem.image.imageWithColor(UIColor.yellowColor()).imageWithRenderingMode(.AlwaysOriginal)
        
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "teamCell")
        
        let width = self.view.frame.size.width
        self.BannerImageHeightConstraint.constant = width/3575 * 500
        self.headlineLabel.text = "TEDxOhioStateUniversity is a student organization at Ohio State founded in 2011 and comprises of mainly undergraduate students and university faculty. It is locally funded by various sponsors at Ohio State and within Columbus. Student members organize an annual event comprising of TED Talk videos and live speakers from the greater Ohio State University community."
        self.messageLabel.text = "I am more than thrilled to see what this upcoming year has in store for TEDxOhioStateUniversity! After four years on campus, we are ready to take the TEDx experience to a new level this March 5, 2016 at the Mershon Auditorium. While we have many new and exciting things lined up for the year ahead, our organization still works under the mission of cultivating an event for students and city leaders who are passionate about challenging ideas and inspiring others. With this mission in mind, our team will work tirelessly to make this year’s event the best and most innovative the university has yet witnessed. I am confident that with the help of our outstanding partners, we will achieve these goals, allowing Ohio State University to join an international community of thinkers and doers. I could not be prouder to be a part of such an ambitious group of individuals, and I hope that you will join us along this exciting journey as we inspire OSU one idea worth spreading at a time."
        self.tedLabel.text = "TED is a nonprofit organization devoted to \"ideas worth spreading\"."
        self.tedxLabel.text = "In the spirit of ideas worth spreading, TEDx is a program of local, self-organized events that bring people together to share a TED-like experience."
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table Methods


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cellIdentifier = "teamCell"
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        let speaker = self.items[indexPath.row]
        cell.textLabel?.text = speaker
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
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
