//
//  ViewController.swift
//  HealthY
//
//  Created by Shweta Jagdish Mahajan (Digital) on 04/08/17.
//  Copyright © 2017 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         WebConnectionHandler().executeRequest();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

