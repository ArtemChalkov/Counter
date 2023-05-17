//
//  ViewController.swift
//  Counter
//
//  Created by Артем Чалков on 09.05.2023.
//

import UIKit

final class ViewController: UIViewController {

    var history: String = "История изменений"
    
    private var count: Int = 0
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var plusButton: UIButton!

    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var historyTextView: UITextView!
    
    @IBOutlet weak var nulButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTextView.text = history
    }
    

    @IBAction func countButtonTapped(_ sender: UIButton) {
        
        let currentDate = Date()
        
        switch sender {
            
        case plusButton:
            count += 1
           // «[дата и время]: значение изменено на -1/+1»
            
            history += "\n" + "\(currentDate) значение изменено на +1: "
            
        case minusButton:
            count -= 1
            
            history += "\n" + "\(currentDate) значение изменено на -1: "
            
        case nulButton:
            count = 0
            history += "\n" + "\(currentDate) значение сброшено: "
            
        default: break
        }
        
      
        
        countLabel.text = "Значение счетчика \(count)"
        historyTextView.text = history
    }
    
}

