//
//  ViewController.swift
//  MagicPills
//
//  Created by Estique on 12/24/16.
//  Copyright © 2016 Estique. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var btnState: UIButton!
    
    @IBOutlet var pickerState: UIPickerView!
    
    let states = ["Dhaka", "Rajshahi", "Pabna", "Chittagong", "Barisal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerState.dataSource = self
        pickerState.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStatePressed(_ sender: AnyObject) {
        pickerState.isHidden = false;
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnState.setTitle(states[row], for: UIControlState())
    }

}

