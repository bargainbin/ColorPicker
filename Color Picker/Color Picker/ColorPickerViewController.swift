//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Noah Backman on 10/6/20.
//  Copyright © 2020 Noah Backman. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var colors = [Color.init(name: "Red", color: UIColor.red),
                  Color.init(name: "Orange", color: UIColor.orange),
                  Color.init(name: "Yellow", color: UIColor.yellow),
                  Color.init(name: "Green", color: UIColor.green),
                  Color.init(name: "Blue", color: UIColor.blue),
                  Color.init(name: "Purple", color: UIColor.purple),
                  Color.init(name: "Brown", color: UIColor.brown)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        self.view.backgroundColor = colors[row].color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self

        // Do any additional setup after loading the view.
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
