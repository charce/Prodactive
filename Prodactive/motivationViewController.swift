//
//  motivationViewController.swift
//  Prodactive
//
//  Created by Chynna Arceno on 7/20/22.
//

import UIKit

class motivationViewController: UIViewController {
   
    @IBOutlet weak var alpaca: UIImageView!
    @IBOutlet weak var dog: UIImageView!
    @IBOutlet weak var cats: UIImageView!
   
    @IBOutlet weak var sentence: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
   
    @IBAction func imageButton(_ sender: Any) {
        let imageArray = ["alpaca", "dog", "cats"]
        let randomInt = Int.random(in: 0..<3)
        alpaca.image = UIImage(named: imageArray [randomInt])
        
        let sentenceArray = ["Read a book", "Facetime your friend", "Listen to your favorite song", "Go for a run"]
        let randomInt2 = Int.random(in:0..<4)
        sentence.text = sentenceArray [randomInt2]
        
        
    }
    
    
    /*
    @IBAction func Button(_ sender: Any) {
        let imageArray = ["alpaca", "dog", "cats"]
        let randomInt = Int.random(in: 0..<3)
        alpaca.image = UIImage(named: imageArray [randomInt])
    
    }
    */
     
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
