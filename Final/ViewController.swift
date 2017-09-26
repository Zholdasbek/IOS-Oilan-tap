//
//  ViewController.swift
//  Final
//
//  Created by Zholdas on 23.04.17.
//  Copyright © 2017 Zholdas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var but: UIButton!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var Logotext: UILabel!
    @IBOutlet weak var LogoText2: UILabel!
    @IBOutlet weak var LevelImage: UIImageView!
    @IBOutlet weak var logosoz: UILabel!
    
    //var dbRef = FIRDatabase.database().reference()
    var typing : Bool = false

    let logocharacters = ("У,Ы,Қ")
    
    var audioPlayer = AVAudioPlayer()
    var LabelText = String()
    
    @IBAction func playbutton(_ sender: Any) {
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "buttonsound", ofType: "mp3")!))
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
    }
   
    override func viewDidLoad() {
        but.center.x += 400
        Logotext.center.y += 500
        LogoText2.center.y -= 500
        LevelImage.alpha=0
        level.alpha=0
        logosoz.alpha=0
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
            self.Logotext.center.y-=500
            self.LogoText2.center.y+=500
            self.but.center.x -= 400
            
        })
        
        UIView.animate(withDuration: 2, delay: 0, options: [], animations: {
            self.LevelImage.alpha=1
            self.logosoz.alpha=1
            self.level.alpha=1
        })
        
        
        
        
        
        let dengei : String? = UserDefaults.standard.object(forKey: "level") as! String?
        level.text = dengei
        
        if level.text == nil{
            level.text = "1"
        }
        
        but.layer.cornerRadius=7
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
