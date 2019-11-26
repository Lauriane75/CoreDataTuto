//
//  ViewController.swift
//  CoreDataTuto
//
//  Created by Lauriane Haydari on 26/11/2019.
//  Copyright © 2019 Lauriane Haydari. All rights reserved.
//

import UIKit
import CoreData

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func addList(_ sender: UIButton) {
        CoreDataHelper().saveListe(nameTextField.text)
    }


}

