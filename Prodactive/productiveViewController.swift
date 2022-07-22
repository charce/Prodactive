//
//  productiveViewController.swift
//  Prodactive
//
//  Created by Chynna Arceno on 7/20/22.
//

import UIKit

class productiveViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    var date: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateLabel.text = date
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
