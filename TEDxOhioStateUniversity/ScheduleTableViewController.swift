//
//  ScheduleTableViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 2/21/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        //tabBarItem = UITabBarItem(title: "Schedule", image: UIImage(named: "icon-schedule"), tag: 3)
    }
    
    let headers: [[String]] = [
        ["11:00 AM", "Event Registration"],
        ["1:00 PM","Session One"],
        ["2:20 PM","Break One"],
        ["3:05 PM","Session Two"],
        ["4:05 PM","Break Two"],
        ["4:50 PM","Session Three"]
    ]
    
    var sessionOneSpeakers:[Speaker] = [Speaker]()
    var sessionTwoSpeakers:[Speaker] = [Speaker]()
    var sessionThreeSpeakers:[Speaker] = [Speaker]()
    
    var selectedSpeaker:Speaker?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.sessionOneSpeakers = SpeakerModel().getSession(1)
        self.sessionTwoSpeakers = SpeakerModel().getSession(2)
        self.sessionThreeSpeakers = SpeakerModel().getSession(3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.headers.count + self.sessionOneSpeakers.count + self.sessionTwoSpeakers.count + self.sessionThreeSpeakers.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.row{
            case 0,1,9,10,16,17:
                return 45
            default:
                return 90
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cellIdentifier:String
        var headerCellIndex = 0
        var session = 0
        
        switch indexPath.row {
            case 0:
                cellIdentifier = "scheduleHeaderCell"
                headerCellIndex = 0
            case 1:
                cellIdentifier = "scheduleHeaderCell"
                headerCellIndex = 1
            case 9:
                cellIdentifier = "scheduleHeaderCell"
                headerCellIndex = 2
            case 10:
                cellIdentifier = "scheduleHeaderCell"
                headerCellIndex = 3
            case 16:
                cellIdentifier = "scheduleHeaderCell"
                headerCellIndex = 4
            case 17:
                cellIdentifier = "scheduleHeaderCell"
                headerCellIndex = 5
            case 2,3,4,5,6,7,8:
                cellIdentifier = "scheduleSpeakerCell"
                session = 1
            case 11,12,13,14,15:
                cellIdentifier = "scheduleSpeakerCell"
                session = 2
            default:
                cellIdentifier = "scheduleSpeakerCell"
                session = 3
        }
        
        
        
        if cellIdentifier == "scheduleHeaderCell" {
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ScheduleHeaderViewCell
            
            let header = self.headers[headerCellIndex]
            
            cell.timeLabel.text = header[0]
            cell.titleLabel.text = header[1]
            
            cell.layoutMargins = UIEdgeInsetsZero
            
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            
            return cell
            
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ScheduleSpeakerViewCell
            
            var speaker: Speaker
            
            if (session == 1){
                speaker = self.sessionOneSpeakers[indexPath.row - 2]
            }else if (session == 2){
                speaker = self.sessionTwoSpeakers[indexPath.row - 11]
            }else{
                speaker = self.sessionThreeSpeakers[indexPath.row - 18]
            }
            
            cell.speakerTitle.text = speaker.speech
            cell.speakerImage.image = UIImage(named: speaker.photo)

            cell.layoutMargins = UIEdgeInsetsZero
            
            return cell
        }
        
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch indexPath.row{
            case 2,3,4,5,6,7,8:
                self.selectedSpeaker = self.sessionOneSpeakers[indexPath.row - 2]
                self.performSegueWithIdentifier("goToSpeakerFromSchedule", sender: self)
            case 11,12,13,14,15:
                self.selectedSpeaker = self.sessionTwoSpeakers[indexPath.row - 11]
                self.performSegueWithIdentifier("goToSpeakerFromSchedule", sender: self)
            case 18,19,20,21,22,23:
                self.selectedSpeaker = self.sessionThreeSpeakers[indexPath.row - 18]
                self.performSegueWithIdentifier("goToSpeakerFromSchedule", sender: self)
            default:
                ""
        }
        
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let detailViewController = segue.destinationViewController as! SpeakerViewController
        
        detailViewController.selectedSpeaker = self.selectedSpeaker
        
    }

    

}
