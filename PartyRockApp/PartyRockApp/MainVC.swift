//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Kevin Kang on 1/9/17.
//  Copyright © 2017 Kevin Kang. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KPn_xqfRDxA\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/PAnEs9mmHJw/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=7SPf7XH86OePwL3_jQ_6-tqApn8", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PAnEs9mmHJw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "TOKYO MEET & GREET AND LIVE-STREAMING ANNOUNCEMENT! | THANK YOU FOR 50K")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/KPn_xqfRDxA/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=dk-HYNh3mtkX-ZOvjW-T_xEJacE", videoURL: urlTest, videoTitle: "BENJI PIERCED MY EARS...")
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/PAnEs9mmHJw/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=7SPf7XH86OePwL3_jQ_6-tqApn8", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PAnEs9mmHJw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "TOKYO MEET & GREET AND LIVE-STREAMING ANNOUNCEMENT! | THANK YOU FOR 50K")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/KPn_xqfRDxA/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=dk-HYNh3mtkX-ZOvjW-T_xEJacE", videoURL: urlTest, videoTitle: "BENJI PIERCED MY EARS...")
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/PAnEs9mmHJw/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=7SPf7XH86OePwL3_jQ_6-tqApn8", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PAnEs9mmHJw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "TOKYO MEET & GREET AND LIVE-STREAMING ANNOUNCEMENT! | THANK YOU FOR 50K")
        
        let p6 = PartyRock(imageURL: "https://i.ytimg.com/vi/KPn_xqfRDxA/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=dk-HYNh3mtkX-ZOvjW-T_xEJacE", videoURL: urlTest, videoTitle: "BENJI PIERCED MY EARS...")
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }

}

