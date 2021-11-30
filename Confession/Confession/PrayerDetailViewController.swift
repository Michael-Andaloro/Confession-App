//
//  PrayerDetailViewController.swift
//  UITableViewCell action using segue
//
//  Created by Aman Aggarwal on 09/06/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class PrayerDetailViewController: UIViewController {

    @IBOutlet weak var lblAppleProduct: UILabel!
    
    var prayer: PrayerList?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblAppleProduct.text = "\((prayer?.prayerScript)!)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
