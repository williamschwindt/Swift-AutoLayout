//
//  AddPOIViewController.swift
//  GrailDiary
//
//  Created by William Schwindt on 4/29/20.
//  Copyright © 2020 William Schwindt. All rights reserved.
//

import UIKit

class AddPOIViewController: UIViewController {
    
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var clue1: UITextField!
    @IBOutlet weak var clue2: UITextField!
    @IBOutlet weak var clue3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
