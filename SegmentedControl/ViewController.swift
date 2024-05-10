//
//  ViewController.swift
//  SegmentedControl
//
//  Created by HTLILI on 10/05/2024.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arrayCities = ["Paris", "Bordeaux", "Marseille", "Lille", "Toulouse", "Tour"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayCities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayCities[row]
    }
    
    
    @IBOutlet weak var pickerCitiesName: UIPickerView!
    @IBOutlet weak var lblPicker: UILabel!
    @IBOutlet weak var lblSlider: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var canReceiveNotes = true
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCitiesName.delegate = self
        pickerCitiesName.dataSource = self
    }

    @IBAction func segDidChanged(_ sender: UISegmentedControl) {
        print("Index: \(segmentedControl.selectedSegmentIndex)")
        print("Value: \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex) ?? "No Value")")
    }
    @IBAction func switchDidChanged(_ sender: UISwitch) {
        print("Status: \(sender.isOn)")
        canReceiveNotes = !sender.isOn
    }
    @IBAction func sliderDidChange(_ sender: UISlider) {
        print("Font Size: \(sender.value)")
        lblSlider.font = UIFont(name: lblSlider.font.fontName, size: CGFloat(sender.value))
    }
    
    @IBAction func btnDesplay(_ sender: UIButton) {
        lblPicker.text = arrayCities[pickerCitiesName.selectedRow(inComponent: 0)]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblPicker.text = arrayCities[row]
    }
    
}



