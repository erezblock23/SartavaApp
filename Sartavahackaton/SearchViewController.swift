//
//  SearchViewController.swift
//  Sartavahackaton
//
//  Created by ori mizrachi on 1/13/16.
//  Copyright © 2016 B-Up!. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var btnMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Menu Btn Stuff
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        //Nav Bar Stuff
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = UIColor(red: 121/255, green: 110/255, blue: 220/225, alpha: 1.0)
        navBar?.tintColor = UIColor.whiteColor()
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