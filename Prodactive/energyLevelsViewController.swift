//
//  energyLevelsViewController.swift
//  Prodactive
//
//  Created by Chynna Arceno on 7/20/22.
//

import UIKit

class energyLevelsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePicker()
    }
    
    func createDatePicker() {
        textField.textAlignment = .center
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        //assign toolbar
        textField.inputAccessoryView = toolbar
        
        //assign date picker to the text field
        textField.inputView = datePicker
        
        //date picker mode
        datePicker.datePickerMode = .date
        
        //adjust date picker frame
        datePicker.frame.size = CGSize(width: 0, height: 200)
    }
    
    @objc func donePressed() {
        //formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        textField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is productiveViewController {
            let vc = segue.destination as? productiveViewController
            vc?.date = textField.text ?? ""
            
        }
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
