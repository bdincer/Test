//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Precocity on 12/26/17.
//  Copyright © 2017 Precocity. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
   
    @IBAction func OnNextTapped(_ sender: Any) {
    
        performSegue(withIdentifier: "skillVCSeque", sender: self)
    }
    
    @IBAction func OnMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func OnWomensTapped(_ sender: Any){
        selectLeague(leagueType: "womens")
    }
   
    @IBAction func OnCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player  = Player()
    }

    func selectLeague(leagueType : String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC =  segue.destination as? SkillVC{
            
            skillVC.player = player
        }
    }
}
