//
//  AddPOIViewController.swift
//  GrailDiary
//
//  Created by William Schwindt on 4/29/20.
//  Copyright © 2020 William Schwindt. All rights reserved.
//

import UIKit

protocol AddPOIDelegate {
    func poiWasAdded(poi: POI )
}

class AddPOIViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var clue1: UITextField!
    @IBOutlet weak var clue2: UITextField!
    @IBOutlet weak var clue3: UITextField!
    
    var delegate: AddPOIDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let location = locationField.text,
            let country = countryField.text else { return }
        
        var clues: [String] = []
        
        if let clue1 = clue1.text,
            !clue1.isEmpty {
            clues.append(clue1)
        }
        
        if let clue2 = clue2.text,
            !clue2.isEmpty {
            clues.append(clue2)
        }
        
        if let clue3 = clue3.text,
            !clue3.isEmpty {
            clues.append(clue3)
        }
        
        let newPoi = POI(location: location, country: country, clues: clues)
        
        delegate?.poiWasAdded(poi: newPoi)
        dismiss(animated: true, completion: nil)
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
