//
//  ViewController.swift
//  Destini
//
//  Created by Sahid Reza on 14/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var desniQuestionLabel: UILabel!
    
    @IBOutlet weak var chooseOption1Button: UIButton!
    
    @IBOutlet weak var chooseOpttion2Button: UIButton!
    
    
     var storyBrain = StoryBrain()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    
    @IBAction func buttonPress(_ sender: UIButton) {
        
        storyBrain.getIncreaseValue()
        updateUI()
        
    }
    
    func updateUI(){
        
        desniQuestionLabel.text = storyBrain.getDestinationQuestionList()
        chooseOption1Button.setTitle(storyBrain.getDestinationFirstOption(), for: .normal)
        chooseOpttion2Button.setTitle(storyBrain.getDestinationSecondOption(), for: .normal)
        
    }
    
    
}

