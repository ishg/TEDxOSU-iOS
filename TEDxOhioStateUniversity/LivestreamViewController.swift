//
//  LivestreamViewController.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 3/1/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit
import SwiftSpinner

class LivestreamViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var webViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SwiftSpinner.show("Loading...")

        // Do any additional setup after loading the view.
        let width = self.view.frame.width
        let height = width * 360 / 640
        
        let html = "<html><body style=\"margin:0;\"><iframe src=\"http://livestream.com/accounts/9213968/events/4839274/player?width="+String(width)+"&height="+String(height)+"&autoPlay=true&mute=false\" width=\""+String(width)+"\" height=\""+String(height)+"\" frameborder=\"0\" scrolling=\"no\"></iframe></body></html>"
        
        //let youtube = "<html><body style=\"margin: 0\"><iframe src=\"http://livestream.com/accounts/17344117/events/4845440/videos/113347152/player?width="+String(width)+"&height="+String(height)+"&autoPlay=true&mute=false\" width=\""+String(width)+"\" height=\""+String(height)+"\" frameborder=\"0\" scrolling=\"no\"></iframe></body></html>"
        
        self.webViewHeightConstraint.constant = height
        
        self.webView.loadHTMLString(html, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView!){
        SwiftSpinner.hide()
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
