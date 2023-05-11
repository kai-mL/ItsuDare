//
//  ViewController.swift
//  ItsuDare
//
//  Created by 森掛 on 2023/05/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var naniLabel: UILabel!
    
    let itsuArray: [String] = ["1年前", "1週間前", "昨日", "今日"]
    let dokoArray: [String] = ["山のうえで", "アメリカで", "学校で", "クラスで"]
    let dareArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let naniArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change() {
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        naniLabel.text = naniArray[index]
        
        if index == 3 {
            index = 0
        }else {
            index = index + 1
        }
    }

    @IBAction func reset() {
        itsuLabel.text = "____"
        dokoLabel.text = "____"
        dareLabel.text = "____"
        naniLabel.text = "____"
        
        index = 0
    }
    
    @IBAction func random() {
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let dareIndex = Int.random(in: 0...3)
        let naniIndex = Int.random(in: 0...3)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        naniLabel.text = naniArray[naniIndex]
    }

}

