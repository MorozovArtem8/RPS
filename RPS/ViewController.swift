//
//  ViewController.swift
//  RPS
//
//  Created by Artem Morozov on 26.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appSignLabel: UILabel!
    
    @IBOutlet weak var gameStatusLable: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(status: .start)
        
       
        
        // Do any additional setup after loading the view.
    }
    @IBAction func tapRock(_ sender: UIButton) {
        
        play(sign: .rock)
    }
    @IBAction func tapPaper(_ sender: UIButton) {
        play(sign: .paper)
        rockButton.isHidden = true
    }
    @IBAction func tapScissors(_ sender: UIButton) {
        play(sign: .scissors)
    }
    
    @IBAction func playAgainTap(_ sender: UIButton) {
        updateUI(status: .start)
    }
    
    
    func updateUI(status: GameState){
        gameStatusLable.text = status.statusString
        if status == .start {
            appSignLabel.text = "🤖"
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
            playAgainButton.isHidden = true
            view.backgroundColor  = .gray
            //ВКЛЮЧИТЬ И ПОКАЗАТЬ КНОПКИ ИГРОКА
        }
        
    }
    
    func play(sign: Sign){
        view.backgroundColor = .lightGray
        let appSign = randomSign()
        let newGameState = sign.comparisonSign(inputSing: appSign)
        updateUI(status: newGameState)
        appSignLabel.text = appSign.emoji
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        playAgainButton.isHidden = false
        
        if sign == .paper {
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        }else if sign == .rock{
            paperButton.isHidden = true
            scissorsButton.isHidden = true
            
        }else{
            rockButton.isHidden = true
            paperButton.isHidden = true
        }
     
        
        //playAgainButton.isHidden = false
    }
}

