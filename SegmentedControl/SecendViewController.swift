//
//  SecendViewController.swift
//  SegmentedControl
//
//  Created by HTLILI on 10/05/2024.
//

import UIKit

class SecendViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    let pickerCity = UIPickerView()
    var arrayCities = ["Paris", "Bordeaux", "Marseille", "Lille", "Toulouse", "Tour"]
    var currentIndex = 0

    @IBOutlet weak var textSelectCity: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(colosePicker))
        toolBar.setItems([btnDone], animated: true)
        pickerCity.delegate = self
        pickerCity.dataSource = self
        textSelectCity.inputView = pickerCity
        textSelectCity.inputAccessoryView = toolBar
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayCities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       arrayCities[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textSelectCity.text = arrayCities[row]
        return textSelectCity.text = arrayCities[row]
    }
    @IBAction func done(_ sender: UIButton) {
        textSelectCity.text = arrayCities[currentIndex]
        view.endEditing(true)
    }
    @objc func colosePicker() {
        textSelectCity.text = arrayCities[currentIndex]
        view.endEditing(true)
    }
    
}
