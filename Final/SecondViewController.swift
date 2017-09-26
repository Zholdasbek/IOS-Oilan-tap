//
//  SecondViewController.swift
//  Final
//
//  Created by Zholdas on 23.04.17.
//  Copyright © 2017 Zholdas. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
   @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but6: UIButton!
    @IBOutlet weak var but7: UIButton!
    @IBOutlet weak var but8: UIButton!
    @IBOutlet weak var but9: UIButton!
    @IBOutlet weak var but10: UIButton!
    @IBOutlet weak var zhukteu: UIButton!
    @IBOutlet weak var hintbutton: UIButton!
    @IBOutlet weak var upai: UILabel!
    @IBOutlet weak var exit: UIButton!
    
    @IBOutlet weak var corview: UIView!
    @IBOutlet weak var bal: UILabel!
    @IBOutlet weak var corword: UILabel!
    @IBOutlet weak var numberofletters: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var word: UITextField!
    @IBOutlet weak var levelText: UILabel!
    @IBOutlet weak var scoreText: UILabel!
    
    var audioPlayer = AVAudioPlayer()
    var a = 0
    var ab = 0
    var b = 0
    var acm = 0
    var score = 0
    var typing : Bool = false
    var images = [
                  [UIImage.init(named: "0"),UIImage.init(named: "1"),UIImage.init(named: "2"),UIImage.init(named: "3")],
                  [UIImage.init(named: "4"),UIImage.init(named: "5"),UIImage.init(named: "6"),UIImage.init(named: "7")],
                  
                  [UIImage.init(named: "8"),UIImage.init(named: "9"),UIImage.init(named: "10"),UIImage.init(named: "11")],
                  [UIImage.init(named: "12"),UIImage.init(named: "13"),UIImage.init(named: "14"),UIImage.init(named: "15")],
                  
                  [UIImage.init(named: "16"),UIImage.init(named: "17"),UIImage.init(named: "18"),UIImage.init(named: "19")],
                  [UIImage.init(named: "20"),UIImage.init(named: "21"),UIImage.init(named: "22"),UIImage.init(named: "23")],
                  
                  [UIImage.init(named: "24"),UIImage.init(named: "25"),UIImage.init(named: "26"),UIImage.init(named: "27")],
                  [UIImage.init(named: "28"),UIImage.init(named: "29"),UIImage.init(named: "30"),UIImage.init(named: "31")],
                  
                  [UIImage.init(named: "32"),UIImage.init(named: "33"),UIImage.init(named: "34"),UIImage.init(named: "35")],
                  [UIImage.init(named: "36"),UIImage.init(named: "37"),UIImage.init(named: "38"),UIImage.init(named: "39")]]
    
    let words = ["УЫҚ","ЖЕЛ","ӨНЕР","САЯБАҚ","ҚАЛАМ","АҒАШ","ӘУЕН","КӨЙЛЕК","КӨЛІК","ҰШАҚ"]
    
    let hintwords = ["У,Ы,Қ","Ж,Е,Л","Ө,Н,Е,Р","С,А,Я,Б,А,Қ","Қ,А,Л,А,М","А,Ғ,А,Ш","Ә,У,Е,Н","К,Ө,Й,Л,Е,К","К,Ө,Л,І,К","Ұ,Ш,А,Қ"]
    
    let randomword = ["Е,Ж,Ч,С,М,И,Т,Ь,Б,Л","Н,Ы,Ф,Ө,В,Е,П,С,А,Р","И,С,Ц,У,Я,А,Қ,Е,К,Б","Л,Ц,У,C,М,Е,Н,Қ,А,К","Ғ,А,Н,Ш,B,Щ,И,Ы,C,Г",
                      "У,Ә,Ы,С,А,Н,Р,Т,Е,П","Ө,К,С,У,Й,А,Е,Р,Л,П,Қ","К,Ы,Й,Ф,Ө,В,А,К,І,Л","Ш,Ұ,П,Р,Қ,Т,Ь,Б,А,И"]
    
  ////////////////////////////////////////////////////////////////////////////////////////////////////////
    @IBAction func character(_ sender: UIButton) {
        do {audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "buttonsound", ofType: "mp3")!))
            audioPlayer.play()}
        catch{print(error)}
        
        let digit = sender.currentTitle!
        if typing{let currentDisplayDigit = word.text
            word.text = currentDisplayDigit!+digit}
        else {word.text = digit
            typing = true}}
    
    
////////////////////////////////////////////////////////////////////////////////////////////////////////
  /*  func textFieldDidChange(textField: UITextField) {
        a+=1
        if images.count != a {
            if  words.contains(word.text!) && images.count != a {
                ab+=1
                b=0
                let rotation1 = CATransform3DTranslate(CATransform3DIdentity, -200, -200, 0)
                let rotation2 = CATransform3DTranslate(CATransform3DIdentity, 200, -200, 0)
                let rotation3 = CATransform3DTranslate(CATransform3DIdentity, -200, 200, 0)
                let rotation4 = CATransform3DTranslate(CATransform3DIdentity, 200, 200, 0)
                
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
                    self.but1.center.x += 400
                    self.but2.center.x += 400
                    self.but3.center.x += 400
                    self.but4.center.x += 400
                    self.but5.center.x += 400
                    self.but6.center.x -= 400
                    self.but7.center.x -= 400
                    self.but8.center.x -= 400
                    self.but9.center.x -= 400
                    self.but10.center.x -= 400})
                UIView.animate(withDuration: 0.5, delay: 0, options: [],animations: {
                    do {self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "correctsound", ofType: "mp3")!))
                        self.audioPlayer.play()}
                    catch{print(error)}
                    
                    self.corview.alpha+=1
                    self.corword.text = "Жауап Дұрыс!"
                    self.bal.alpha=1
                    self.bal.text="+10  ұпай"
                    self.corword.textColor = UIColor.green})
                
                UIView.animate(withDuration: 0.5, delay: 1, options: [],
                               animations: {self.corview.alpha=0})
                
                UIView.animate(withDuration: 1, delay: 0, options: [],animations: {
                    let scrr = self.score + 10
                    let san = self.scoreText.text
                    let sc = String(Int(san!)!+Int(scrr))
                    self.scoreText.text = sc
                    UserDefaults.standard.set(self.scoreText.text, forKey: "score")
                    self.levelText.text = String(self.a+1)
                    UserDefaults.standard.set(self.levelText.text, forKey: "level")
                    
                    self.upai.textColor = UIColor.green
                    self.upai.text="+10"
                    self.upai.alpha+=1
                    self.upai.center.y -= 25})
                
                UIView.animate(withDuration: 0.5, delay: 1, options: [],
                               animations: {
                                self.upai.alpha=0
                                self.upai.center.y += 25})
                
                UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
                    self.but1.center.x -= 400
                    self.but2.center.x -= 400
                    self.but3.center.x -= 400
                    self.but4.center.x -= 400
                    self.but5.center.x -= 400
                    self.but6.center.x += 400
                    self.but7.center.x += 400
                    self.but8.center.x += 400
                    self.but9.center.x += 400
                    self.but10.center.x += 400})
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: {
                    self.img1.layer.transform = rotation1
                    self.img2.layer.transform = rotation2
                    self.img3.layer.transform = rotation3
                    self.img4.layer.transform = rotation4
                    
                    self.img1.layer.bounds.size.height = 0
                    self.img1.layer.bounds.size.width = 0
                    self.img2.layer.bounds.size.height = 0
                    self.img2.layer.bounds.size.width = 0
                    self.img3.layer.bounds.size.height = 0
                    self.img3.layer.bounds.size.width = 0
                    self.img4.layer.bounds.size.height = 0
                    self.img4.layer.bounds.size.width = 0 }, completion: nil)
                
                let fullWord = randomword[a-1]
                var OneWord = fullWord.components(separatedBy: ",")
                
                but1.setTitle(OneWord[0],for: .normal)
                UserDefaults.standard.set(OneWord[0], forKey: "but1")
                but2.setTitle(OneWord[1],for: .normal)
                UserDefaults.standard.set(OneWord[1], forKey: "but2")
                but3.setTitle(OneWord[2],for: .normal)
                UserDefaults.standard.set(OneWord[2], forKey: "but3")
                but4.setTitle(OneWord[3],for: .normal)
                UserDefaults.standard.set(OneWord[3], forKey: "but4")
                but5.setTitle(OneWord[4],for: .normal)
                UserDefaults.standard.set(OneWord[4], forKey: "but5")
                but6.setTitle(OneWord[5],for: .normal)
                UserDefaults.standard.set(OneWord[5], forKey: "but6")
                but7.setTitle(OneWord[6],for: .normal)
                UserDefaults.standard.set(OneWord[6], forKey: "but7")
                but8.setTitle(OneWord[7],for: .normal)
                UserDefaults.standard.set(OneWord[7], forKey: "but8")
                but9.setTitle(OneWord[8],for: .normal)
                UserDefaults.standard.set(OneWord[8], forKey: "but9")
                but10.setTitle(OneWord[9],for: .normal)
                UserDefaults.standard.set(OneWord[9], forKey: "but10")
                
                img1.layer.transform = rotation1
                img2.layer.transform = rotation2
                img3.layer.transform = rotation3
                img4.layer.transform = rotation4
                
                UIView.animate(withDuration: 0.5, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: {
                    self.img1.layer.transform = CATransform3DIdentity
                    self.img2.layer.transform = CATransform3DIdentity
                    self.img3.layer.transform = CATransform3DIdentity
                    self.img4.layer.transform = CATransform3DIdentity
                    
                    self.img1.layer.bounds.size.height = 147
                    self.img1.layer.bounds.size.width = 165
                    self.img2.layer.bounds.size.height = 147
                    self.img2.layer.bounds.size.width = 165
                    self.img3.layer.bounds.size.height = 147
                    self.img3.layer.bounds.size.width = 165
                    self.img4.layer.bounds.size.height = 147
                    self.img4.layer.bounds.size.width = 165
                    
                    let test1: String = self.words[self.a]
                    let tt = ("Бұл жерде "+String(test1.characters.count)+" әріп")
                    self.numberofletters.text = tt
                    UserDefaults.standard.set(tt, forKey: "aripsany")
                    
                    self.img1.image = self.images[self.a][0]
                    self.img2.image = self.images[self.a][1]
                    self.img3.image = self.images[self.a][2]
                    self.img4.image = self.images[self.a][3]
                    self.word.text = ""
                    UserDefaults.standard.set(self.a, forKey: "img")
                    UserDefaults.standard.set(self.ab, forKey: "aabb")})
            }
                
            else{
                self.bal.alpha = 0
                a-=1
                do {audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "errorsound", ofType:"mp3")!))
                    audioPlayer.play()}
                catch{print(error)}
                
                UIView.animate(withDuration: 0.5, delay: 0, options: [],
                               animations: {
                                self.corview.alpha+=1
                                self.corword.text = "Жауап Дұрыс емес!"
                                self.corword.textColor = UIColor.red },completion: nil)
                
                UIView.animate(withDuration: 0.5, delay: 1, options: [],animations: {
                    self.corview.alpha=0 },completion: nil )  }
        }
            
        else{
            self.bal.text =  ("Сіз "+scoreText.text!+" ұпай жинадыңыз")
            self.bal.alpha=1
            self.corview.alpha=1
            self.exit.layer.cornerRadius=20
            self.exit.alpha=1
            self.numberofletters.alpha=0
            self.corview.backgroundColor = UIColor.black
            self.corword.text = "Ойын бітті!"
            self.corword.textColor = UIColor.blue}
    }*/
    
        @IBAction func enter(_ sender: Any) {
            a+=1
            if images.count != a {
                if  words.contains(word.text!) && images.count != a {
                    ab+=1
                    b=0
                    let rotation1 = CATransform3DTranslate(CATransform3DIdentity, -200, -200, 0)
                    let rotation2 = CATransform3DTranslate(CATransform3DIdentity, 200, -200, 0)
                    let rotation3 = CATransform3DTranslate(CATransform3DIdentity, -200, 200, 0)
                    let rotation4 = CATransform3DTranslate(CATransform3DIdentity, 200, 200, 0)
                    
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
                        self.but1.center.x += 400
                        self.but2.center.x += 400
                        self.but3.center.x += 400
                        self.but4.center.x += 400
                        self.but5.center.x += 400
                        self.but6.center.x -= 400
                        self.but7.center.x -= 400
                        self.but8.center.x -= 400
                        self.but9.center.x -= 400
                        self.but10.center.x -= 400})
                    UIView.animate(withDuration: 0.5, delay: 0, options: [],animations: {
                                    do {self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "correctsound", ofType: "mp3")!))
                                        self.audioPlayer.play()}
                                    catch{print(error)}

                                    self.corview.alpha+=1
                                    self.corword.text = "Жауап Дұрыс!"
                                    self.bal.alpha=1
                                    self.bal.text="+10  ұпай"
                                    self.corword.textColor = UIColor.green})
                    
                    UIView.animate(withDuration: 0.5, delay: 1, options: [],
                                   animations: {self.corview.alpha=0})
 
                    UIView.animate(withDuration: 1, delay: 0, options: [],animations: {
                                    let scrr = self.score + 10
                                    let san = self.scoreText.text
                                    let sc = String(Int(san!)!+Int(scrr))
                                    self.scoreText.text = sc
                                    UserDefaults.standard.set(self.scoreText.text, forKey: "score")
                                    self.levelText.text = String(self.a+1)
                                    UserDefaults.standard.set(self.levelText.text, forKey: "level")
                                    
                                    self.upai.textColor = UIColor.green
                                    self.upai.text="+10"
                                    self.upai.alpha+=1
                                    self.upai.center.y -= 25})
  
                    UIView.animate(withDuration: 0.5, delay: 1, options: [],
                                   animations: {
                                    self.upai.alpha=0
                                    self.upai.center.y += 25})
                    
                    UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
                        self.but1.center.x -= 400
                        self.but2.center.x -= 400
                        self.but3.center.x -= 400
                        self.but4.center.x -= 400
                        self.but5.center.x -= 400
                        self.but6.center.x += 400
                        self.but7.center.x += 400
                        self.but8.center.x += 400
                        self.but9.center.x += 400
                        self.but10.center.x += 400})
                    UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: {
                        self.img1.layer.transform = rotation1
                        self.img2.layer.transform = rotation2
                        self.img3.layer.transform = rotation3
                        self.img4.layer.transform = rotation4
                        
                        self.img1.layer.bounds.size.height = 0
                        self.img1.layer.bounds.size.width = 0
                        self.img2.layer.bounds.size.height = 0
                        self.img2.layer.bounds.size.width = 0
                        self.img3.layer.bounds.size.height = 0
                        self.img3.layer.bounds.size.width = 0
                        self.img4.layer.bounds.size.height = 0
                        self.img4.layer.bounds.size.width = 0 }, completion: nil)
                  
                    let fullWord = randomword[a-1]
                    var OneWord = fullWord.components(separatedBy: ",")
                    
                    but1.setTitle(OneWord[0],for: .normal)
                    UserDefaults.standard.set(OneWord[0], forKey: "but1")
                    but2.setTitle(OneWord[1],for: .normal)
                    UserDefaults.standard.set(OneWord[1], forKey: "but2")
                    but3.setTitle(OneWord[2],for: .normal)
                    UserDefaults.standard.set(OneWord[2], forKey: "but3")
                    but4.setTitle(OneWord[3],for: .normal)
                    UserDefaults.standard.set(OneWord[3], forKey: "but4")
                    but5.setTitle(OneWord[4],for: .normal)
                    UserDefaults.standard.set(OneWord[4], forKey: "but5")
                    but6.setTitle(OneWord[5],for: .normal)
                    UserDefaults.standard.set(OneWord[5], forKey: "but6")
                    but7.setTitle(OneWord[6],for: .normal)
                    UserDefaults.standard.set(OneWord[6], forKey: "but7")
                    but8.setTitle(OneWord[7],for: .normal)
                    UserDefaults.standard.set(OneWord[7], forKey: "but8")
                    but9.setTitle(OneWord[8],for: .normal)
                    UserDefaults.standard.set(OneWord[8], forKey: "but9")
                    but10.setTitle(OneWord[9],for: .normal)
                    UserDefaults.standard.set(OneWord[9], forKey: "but10")
                    
                    img1.layer.transform = rotation1
                    img2.layer.transform = rotation2
                    img3.layer.transform = rotation3
                    img4.layer.transform = rotation4
                    
                    UIView.animate(withDuration: 0.5, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: {
                        self.img1.layer.transform = CATransform3DIdentity
                        self.img2.layer.transform = CATransform3DIdentity
                        self.img3.layer.transform = CATransform3DIdentity
                        self.img4.layer.transform = CATransform3DIdentity
                        
                        self.img1.layer.bounds.size.height = 147
                        self.img1.layer.bounds.size.width = 165
                        self.img2.layer.bounds.size.height = 147
                        self.img2.layer.bounds.size.width = 165
                        self.img3.layer.bounds.size.height = 147
                        self.img3.layer.bounds.size.width = 165
                        self.img4.layer.bounds.size.height = 147
                        self.img4.layer.bounds.size.width = 165
                        
                        let test1: String = self.words[self.a]
                        let tt = ("Бұл жерде "+String(test1.characters.count)+" әріп")
                        self.numberofletters.text = tt
                        UserDefaults.standard.set(tt, forKey: "aripsany")
                        
                        self.img1.image = self.images[self.a][0]
                        self.img2.image = self.images[self.a][1]
                        self.img3.image = self.images[self.a][2]
                        self.img4.image = self.images[self.a][3]
                        self.word.text = ""
                        UserDefaults.standard.set(self.a, forKey: "img")
                        UserDefaults.standard.set(self.ab, forKey: "aabb")})
                    }
                    
                else{
                    self.bal.alpha = 0
                    a-=1
                    do {audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "errorsound", ofType:"mp3")!))
                        audioPlayer.play()}
                    catch{print(error)}
                    
                    UIView.animate(withDuration: 0.5, delay: 0, options: [],
                                   animations: {
                                    self.corview.alpha+=1
                                    self.corword.text = "Жауап Дұрыс емес!"
                                    self.corword.textColor = UIColor.red },completion: nil)
                  
                    UIView.animate(withDuration: 0.5, delay: 1, options: [],animations: {
                                    self.corview.alpha=0 },completion: nil )  }
            }
     
            else{
                self.bal.text =  ("Сіз "+scoreText.text!+" ұпай жинадыңыз")
                self.bal.alpha=1
                self.corview.alpha=1
                self.exit.layer.cornerRadius=20
                self.exit.alpha=1
                self.numberofletters.alpha=0
                self.corview.backgroundColor = UIColor.black
                self.corword.text = "Ойын бітті!"
                self.corword.textColor = UIColor.blue}
    }
    
    
    
   ////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    
    @IBAction func ClearButton(_ sender: UIButton) {
            if word.text != ""{
                    do {audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "clearsound", ofType:"mp3")!))
                        audioPlayer.play()}
                    catch{print(error)}
                    let tx = word.text
            word.text = tx?.substring(to: (tx?.index(before: (tx?.endIndex)!))!) }
        
        
        
        }
 ////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    @IBAction func exitbutton(_ sender: Any) {
        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        UserDefaults.standard.synchronize() }
    
    
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*@IBAction func check(_ sender: Any) {
        a+=1
        let count = word.text
        let chek2 = words[acm]
        if count?.characters.count == chek2.characters.count {
        
        if images.count != a {
            if  words.contains(word.text!) && images.count != a {
                ab+=1
                b=0
                let rotation1 = CATransform3DTranslate(CATransform3DIdentity, -200, -200, 0)
                let rotation2 = CATransform3DTranslate(CATransform3DIdentity, 200, -200, 0)
                let rotation3 = CATransform3DTranslate(CATransform3DIdentity, -200, 200, 0)
                let rotation4 = CATransform3DTranslate(CATransform3DIdentity, 200, 200, 0)
                
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
                    self.but1.center.x += 400
                    self.but2.center.x += 400
                    self.but3.center.x += 400
                    self.but4.center.x += 400
                    self.but5.center.x += 400
                    self.but6.center.x -= 400
                    self.but7.center.x -= 400
                    self.but8.center.x -= 400
                    self.but9.center.x -= 400
                    self.but10.center.x -= 400})
                UIView.animate(withDuration: 0.5, delay: 0, options: [],animations: {
                    do {self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "correctsound", ofType: "mp3")!))
                        self.audioPlayer.play()}
                    catch{print(error)}
                    
                    self.corview.alpha+=1
                    self.corword.text = "Жауап Дұрыс!"
                    self.bal.alpha=1
                    self.bal.text="+10  ұпай"
                    self.corword.textColor = UIColor.green})
                
                UIView.animate(withDuration: 0.5, delay: 1, options: [],
                               animations: {self.corview.alpha=0})
                
                UIView.animate(withDuration: 1, delay: 0, options: [],animations: {
                    let scrr = self.score + 10
                    let san = self.scoreText.text
                    let sc = String(Int(san!)!+Int(scrr))
                    self.scoreText.text = sc
                    UserDefaults.standard.set(self.scoreText.text, forKey: "score")
                    self.levelText.text = String(self.a+1)
                    UserDefaults.standard.set(self.levelText.text, forKey: "level")
                    
                    self.upai.textColor = UIColor.green
                    self.upai.text="+10"
                    self.upai.alpha+=1
                    self.upai.center.y -= 25})
                
                UIView.animate(withDuration: 0.5, delay: 1, options: [],
                               animations: {
                                self.upai.alpha=0
                                self.upai.center.y += 25})
                
                UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
                    self.but1.center.x -= 400
                    self.but2.center.x -= 400
                    self.but3.center.x -= 400
                    self.but4.center.x -= 400
                    self.but5.center.x -= 400
                    self.but6.center.x += 400
                    self.but7.center.x += 400
                    self.but8.center.x += 400
                    self.but9.center.x += 400
                    self.but10.center.x += 400})
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: {
                    self.img1.layer.transform = rotation1
                    self.img2.layer.transform = rotation2
                    self.img3.layer.transform = rotation3
                    self.img4.layer.transform = rotation4
                    
                    self.img1.layer.bounds.size.height = 0
                    self.img1.layer.bounds.size.width = 0
                    self.img2.layer.bounds.size.height = 0
                    self.img2.layer.bounds.size.width = 0
                    self.img3.layer.bounds.size.height = 0
                    self.img3.layer.bounds.size.width = 0
                    self.img4.layer.bounds.size.height = 0
                    self.img4.layer.bounds.size.width = 0 }, completion: nil)
                
                let fullWord = randomword[a-1]
                var OneWord = fullWord.components(separatedBy: ",")
                
                but1.setTitle(OneWord[0],for: .normal)
                UserDefaults.standard.set(OneWord[0], forKey: "but1")
                but2.setTitle(OneWord[1],for: .normal)
                UserDefaults.standard.set(OneWord[1], forKey: "but2")
                but3.setTitle(OneWord[2],for: .normal)
                UserDefaults.standard.set(OneWord[2], forKey: "but3")
                but4.setTitle(OneWord[3],for: .normal)
                UserDefaults.standard.set(OneWord[3], forKey: "but4")
                but5.setTitle(OneWord[4],for: .normal)
                UserDefaults.standard.set(OneWord[4], forKey: "but5")
                but6.setTitle(OneWord[5],for: .normal)
                UserDefaults.standard.set(OneWord[5], forKey: "but6")
                but7.setTitle(OneWord[6],for: .normal)
                UserDefaults.standard.set(OneWord[6], forKey: "but7")
                but8.setTitle(OneWord[7],for: .normal)
                UserDefaults.standard.set(OneWord[7], forKey: "but8")
                but9.setTitle(OneWord[8],for: .normal)
                UserDefaults.standard.set(OneWord[8], forKey: "but9")
                but10.setTitle(OneWord[9],for: .normal)
                UserDefaults.standard.set(OneWord[9], forKey: "but10")
                
                img1.layer.transform = rotation1
                img2.layer.transform = rotation2
                img3.layer.transform = rotation3
                img4.layer.transform = rotation4
                
                UIView.animate(withDuration: 0.5, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: [], animations: {
                    self.img1.layer.transform = CATransform3DIdentity
                    self.img2.layer.transform = CATransform3DIdentity
                    self.img3.layer.transform = CATransform3DIdentity
                    self.img4.layer.transform = CATransform3DIdentity
                    
                    self.img1.layer.bounds.size.height = 147
                    self.img1.layer.bounds.size.width = 165
                    self.img2.layer.bounds.size.height = 147
                    self.img2.layer.bounds.size.width = 165
                    self.img3.layer.bounds.size.height = 147
                    self.img3.layer.bounds.size.width = 165
                    self.img4.layer.bounds.size.height = 147
                    self.img4.layer.bounds.size.width = 165
                    
                    let test1: String = self.words[self.a]
                    let tt = ("Бұл жерде "+String(test1.characters.count)+" әріп")
                    self.numberofletters.text = tt
                    UserDefaults.standard.set(tt, forKey: "aripsany")
                    
                    self.img1.image = self.images[self.a][0]
                    self.img2.image = self.images[self.a][1]
                    self.img3.image = self.images[self.a][2]
                    self.img4.image = self.images[self.a][3]
                    self.word.text = ""
                    UserDefaults.standard.set(self.a, forKey: "img")
                    UserDefaults.standard.set(self.ab, forKey: "aabb")})
            }
                
            else{
                self.bal.alpha = 0
                a-=1
                do {audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "errorsound", ofType:"mp3")!))
                    audioPlayer.play()}
                catch{print(error)}
                
                UIView.animate(withDuration: 0.5, delay: 0, options: [],
                               animations: {
                                self.corview.alpha+=1
                                self.corword.text = "Жауап Дұрыс емес!"
                                self.corword.textColor = UIColor.red },completion: nil)
                
                UIView.animate(withDuration: 0.5, delay: 1, options: [],animations: {
                    self.corview.alpha=0 },completion: nil )  }
        }
            
        else{
            self.bal.text =  ("Сіз "+scoreText.text!+" ұпай жинадыңыз")
            self.bal.alpha=1
            self.corview.alpha=1
            self.exit.layer.cornerRadius=20
            self.exit.alpha=1
            self.numberofletters.alpha=0
            self.corview.backgroundColor = UIColor.black
            self.corword.text = "Ойын бітті!"
            self.corword.textColor = UIColor.blue}

        
        }
        
    }*/
    
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    @IBAction func hint(_ sender: Any) {
        let alertcontroller = UIAlertController(title: "Бір әріпті ашу (-20 тиын)", message: "", preferredStyle: UIAlertControllerStyle.alert)
        let yes_action = UIAlertAction(title: "Иә", style: UIAlertActionStyle.default) { (action) in
            
            let charactercount: String = self.word.text!
            let charactercount2: String = self.words[self.ab]
            
            if charactercount.characters.count < charactercount2.characters.count {

            UIView.animate(withDuration: 1, delay: 0, options: [],animations: {
                                self.bal.alpha = 0
                
                                if   Int(self.scoreText.text!)!>=20{
                                    let hintwordd = self.hintwords[self.ab]
                                    var OneWord = hintwordd.components(separatedBy: ",")
                                    var ac = self.word.text
                                    let sn = ac?.characters.count
                                    let digit = OneWord[self.b+Int(sn!)]

                                        if   self.typing{
                                            let currentDisplayDigit = self.word.text
                                            self.word.text = currentDisplayDigit!+digit}
                                        else  {
                                            self.word.text = digit
                                            self.typing = true}
                                    
                                        self.b+=1
                                    
                                        let scr = self.score - 20
                                        let san = self.scoreText.text
                                        let sc = String(Int(san!)!+Int(scr))
                                        self.scoreText.text = sc
                                        UserDefaults.standard.set(self.scoreText.text, forKey: "score")
                                    
                                        self.upai.textColor = UIColor.red
                                        self.upai.text="-20"
                                        self.upai.alpha+=1
                                        self.upai.center.y += 25 }
                                
                                else{
                                UIView.animate(withDuration: 1, delay: 0, options: [],animations: {
                                                self.corview.alpha+=1
                                                self.corword.text = "Сіздің тиыныңыз жеткіліксіз!"
                                                self.corword.textColor = UIColor.red },completion: nil)
                                
                                UIView.animate(withDuration: 1.5, delay: 1, options: [],animations: {
                                                self.corview.alpha=0 },completion: nil )
                                    }
            })
            
                    UIView.animate(withDuration: 0.5, delay: 1, options: [],
                           animations: {
                            self.upai.alpha=0
                            self.upai.center.y -= 25 })
                }
            
            else{
                self.bal.alpha = 0
                UIView.animate(withDuration: 1, delay: 0, options: [],animations: {
                    self.corview.alpha+=1
                    self.corword.text = "Енгізілетін сөз бітті!"
                    self.corword.textColor = UIColor.blue },completion: nil)
                
                UIView.animate(withDuration: 1.5, delay: 1, options: [],
                               animations: {
                                self.corview.alpha=0 },completion: nil )
                    }
              }
        let no_action = UIAlertAction(title: "Жоқ", style: UIAlertActionStyle.default) { (action) in }
        
        alertcontroller.addAction(yes_action)
        alertcontroller.addAction(no_action)
        self.present(alertcontroller, animated: true, completion: nil)
    }
   
   
    
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
   
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        upai.alpha=0
        exit.alpha=0
        bal.alpha=0
        acm+=1
        
       // word.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        
        let score : String? = UserDefaults.standard.object(forKey: "score") as! String?
        let level : String? = UserDefaults.standard.object(forKey: "level") as! String?
        let aripsanyy : String? = UserDefaults.standard.object(forKey: "aripsany") as! String?
        
        let butt1 : String? = UserDefaults.standard.object(forKey: "but1") as! String?
        let butt2 : String? = UserDefaults.standard.object(forKey: "but2") as! String?
        let butt3 : String? = UserDefaults.standard.object(forKey: "but3") as! String?
        let butt4 : String? = UserDefaults.standard.object(forKey: "but4") as! String?
        let butt5 : String? = UserDefaults.standard.object(forKey: "but5") as! String?
        let butt6 : String? = UserDefaults.standard.object(forKey: "but6") as! String?
        let butt7 : String? = UserDefaults.standard.object(forKey: "but7") as! String?
        let butt8 : String? = UserDefaults.standard.object(forKey: "but8") as! String?
        let butt9 : String? = UserDefaults.standard.object(forKey: "but9") as! String?
        let butt10 : String? = UserDefaults.standard.object(forKey: "but10") as! String?
        
        let aa : Int? = UserDefaults.standard.object(forKey: "img") as! Int?
        let hintsoz : Int? = UserDefaults.standard.object(forKey: "aabb") as! Int?
        
        but1.center.x -= 400
        but2.center.x -= 400
        but3.center.x -= 400
        but4.center.x -= 400
        but5.center.x -= 400
        but6.center.x += 400
        but7.center.x += 400
        but8.center.x += 400
        but9.center.x += 400
        but10.center.x += 400
        
        but1.layer.cornerRadius=7
        but2.layer.cornerRadius=7
        but3.layer.cornerRadius=7
        but4.layer.cornerRadius=7
        but5.layer.cornerRadius=7
        but6.layer.cornerRadius=7
        but7.layer.cornerRadius=7
        but8.layer.cornerRadius=7
        but9.layer.cornerRadius=7
        but10.layer.cornerRadius=7
        zhukteu.layer.cornerRadius=15
        hintbutton.layer.cornerRadius=20
        
        img1.layer.borderColor=UIColor.gray.cgColor
        img2.layer.borderColor=UIColor.gray.cgColor
        img3.layer.borderColor=UIColor.gray.cgColor
        img4.layer.borderColor=UIColor.gray.cgColor
        
        img1.layer.borderWidth=2
        img2.layer.borderWidth=2
        img3.layer.borderWidth=2
        img4.layer.borderWidth=2
        
        let rotation1 = CATransform3DTranslate(CATransform3DIdentity, -200, -200, 0)
        let rotation2 = CATransform3DTranslate(CATransform3DIdentity, 200, -200, 0)
        let rotation3 = CATransform3DTranslate(CATransform3DIdentity, -200, 200, 0)
        let rotation4 = CATransform3DTranslate(CATransform3DIdentity, 200, 200, 0)
        
        img1.layer.transform = rotation1
        img2.layer.transform = rotation2
        img3.layer.transform = rotation3
        img4.layer.transform = rotation4
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.2, options: [], animations: {
            self.img1.layer.transform = CATransform3DIdentity
            self.img2.layer.transform = CATransform3DIdentity
            self.img3.layer.transform = CATransform3DIdentity
            self.img4.layer.transform = CATransform3DIdentity})
        
        UIView.animate(withDuration: 0.8, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.3, options: [], animations: {
            self.but1.center.x += 400
            self.but2.center.x += 400
            self.but3.center.x += 400
            self.but4.center.x += 400
            self.but5.center.x += 400
            self.but6.center.x -= 400
            self.but7.center.x -= 400
            self.but8.center.x -= 400
            self.but9.center.x -= 400
            self.but10.center.x -= 400})
        
        
        if let check = score {
            scoreText.text = check
            levelText.text = level
            numberofletters.text = aripsanyy
            
            but1.setTitle(butt1,for: .normal)
            but2.setTitle(butt2,for: .normal)
            but3.setTitle(butt3,for: .normal)
            but4.setTitle(butt4,for: .normal)
            but5.setTitle(butt5,for: .normal)
            but6.setTitle(butt6,for: .normal)
            but7.setTitle(butt7,for: .normal)
            but8.setTitle(butt8,for: .normal)
            but9.setTitle(butt9,for: .normal)
            but10.setTitle(butt10,for: .normal)
            
            corview.alpha = 0
            word.text = ""
            
            img1.image = images[aa!][0]
            img2.image = images[aa!][1]
            img3.image = images[aa!][2]
            img4.image = images[aa!][3]
            
            a = aa!
            ab = hintsoz!
            
        }
        else{
            numberofletters.text = aripsanyy
            scoreText.text = "60"
            levelText.text="1"
            let test1: String = words[0]
            numberofletters.text = ("Бұл жерде "+String(test1.characters.count)+" әріп")
            corview.alpha = 0
            
            img1.image = images[0][0]
            img2.image = images[0][1]
            img3.image = images[0][2]
            img4.image = images[0][3] }
    
            super.viewDidAppear(animated) }
    
}
