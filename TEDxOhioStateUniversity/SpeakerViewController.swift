//
//  SpeakerViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 1/25/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit
import SwiftSpinner

class SpeakerViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var profileImageViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    var selectedSpeaker:Speaker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.activityIndicatorView.startAnimating()
        SwiftSpinner.show("Loading...")
    }
    
    override func viewDidAppear(animated: Bool) {
        
        if let vid = self.selectedSpeaker{
            self.nameLabel.text = vid.name
            self.titleLabel.text = vid.title
            self.profileImageView.image = UIImage(named: vid .photo)!
            self.bioLabel.text = vid.bio
            
            let width = self.view.frame.size.width
            self.profileImageViewHeightConstraint.constant = width
            
        }
        
        SwiftSpinner.hide()
        
        //self.activityIndicatorView.stopAnimating()
        //self.activityIndicatorView.hidesWhenStopped = true
        
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
