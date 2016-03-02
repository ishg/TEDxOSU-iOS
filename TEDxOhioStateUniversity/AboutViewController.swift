//
//  AboutViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 1/26/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var BannerImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var tedLabel: UILabel!
    @IBOutlet weak var tedxLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func developerButtonClicked(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.ishmeetgrewal.com")!)
    }
    
    @IBAction func learnMoreTED(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.ted.com/")!)
    }
    
    @IBAction func learnMoreTEDx(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.ted.com/about/programs-initiatives/tedx-program")!)
    }
    
    let committees = ["Executive Board","Communications Committee", "Logistics Committee", "Community Engagement", "Design Committee", "Finance Committee", "Content Committee", "Marketing Committee", "Advisors"]
    
    
    let members = [
    
        [
            
            "Stephany Tabet",
            "Curator",
            "Avish Jain",
            "Director of Communications",
            "Alex Cochran",
            "Director of Content",
            "Shivang Patel",
            "Director of Finance & Development",
            "Holly Rack",
            "Director of Logistics",
            "Therese Rajasekera",
            "Director of Community Engagement",
            "Brandon Muschlitz",
            "Director of Marketing",
            "Raine McMullen",
            "Director of Design"
        ],
        [
            "Tracey Okine",
            "Liv Birdsall",
            "Joel Salas",
            "Viv Le",
            "Sri Karri",
            "Maheen Nadeem"
        ],
        [
            "Cassandra Lechner",
            "Jasneet Singh",
            "Karan Rai",
            "Afifah Ayub",
            "Hallie Nudelman",
            "Melissa Mahan",
            "Nabiha Islam",
            "Bailey Cross",
            "Sara Liang"
        ],
        [
            "Ali Kovacevich",
            "Alex Armeni",
            "Caroline Klug",
            "Vaughn Hunt"
        ],
        [
            "Wandi Xu",
            "Nicole Riemer",
            "Jacob Katz",
            "Da Lee"
        ],
        [
            "Mengjia Li",
            "Mansi Arora"
        ],
        [
            "Sarah Beadle",
            "Vanja Tolj",
            "Chanan Brown",
            "Jordan Royster",
            "Mehak Arora",
            "Jessica Mongilio",
            "Michael Watson",
            "Jordan Moseley",
            "Sierra Nave",
            "Corey Keyser"
        ],
        [
            "Samantha Lechner",
            "Deepti Gupta",
            "Elizabeth Parisi",
            "Ryan Hines",
            "Stephanie Payano",
            "Jocelyn May",
            "Greg Nagy",
            "Mihir Baxi",
            "Andrew Lewis",
            "Lexi Hemker",
            "Jessica Shakesprere"
        ],
        [
            "Jillian Baer",
            "College of Public Affairs, OSU",
            "Dr. Amy Barnes",
            "Department of Educational Studies, OSU",
            "Dr. Gretchen Metzelaars",
            "Office of Student Life, OSU"
        ]
    ]

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon-info"), tag: 2)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "About"
        
        //tabBarItem.image = tabBarItem.image.imageWithColor(UIColor.yellowColor()).imageWithRenderingMode(.AlwaysOriginal)
        
        self.tableView.scrollEnabled = false
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "teamCell")
        
        let width = self.view.frame.size.width
        self.BannerImageHeightConstraint.constant = width/3575 * 500
        self.headlineLabel.text = "TEDxOhioStateUniversity is a student organization at Ohio State founded in 2011 and comprises of mainly undergraduate students and university faculty. It is locally funded by various sponsors at Ohio State and within Columbus. Student members organize an annual event comprising of TED Talk videos and live speakers from the greater Ohio State University community."
        self.messageLabel.text = "Welcome to the fifth annual TEDxOhioStateUniversity conference!\n\nThe TEDxOhioStateUniversity team has worked tirelessly to curate a day of inspiring ideas worth spreading, and we are so proud to present a lineup of powerful speakers and performers that will transform your perceptions and reconstruct your realities.\n\nNone of this could have been possible without the dedication of fifty-five hard-working students, the generosity of our partners, and guidance of our three incredible faculty advisors. We are also eternally grateful to the engaged Buckeyes who fill this auditorium year after year. Thank you for joining us in our mission of showcasing the stories, innovations, and experiences of your fellow peers, faculty, and alumni.\n\nToday, we invite you to join us with an open mind and a willingness to contribute to the collective conversation of existing realities. Most importantly, we challenge you to reconstruct your own."
        self.tedLabel.text = "TED is a nonprofit organization devoted to \"ideas worth spreading\"."
        self.tedxLabel.text = "In the spirit of ideas worth spreading, TEDx is a program of local, self-organized events that bring people together to share a TED-like experience."
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table Methods
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.committees.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.members[section].count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.committees[section]
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "teamCell"
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        
        if (indexPath.section == 0 || indexPath.section == 8){
            if(indexPath.row % 2 == 1){
                cell.textLabel?.textColor = UIColor.grayColor()
            }
        }
        
        
        
        cell.textLabel?.font = cell.textLabel?.font.fontWithSize(12)
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.textLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        cell.textLabel?.numberOfLines = 2
        
        cell.textLabel?.text = self.members[indexPath.section][indexPath.row]
        
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
