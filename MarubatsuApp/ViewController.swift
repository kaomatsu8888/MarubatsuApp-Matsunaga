//
//  ViewController.swift
//  MarubatsuApp
//
//  Created by kaoru matsunaga on 2023/09/02.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    // 表示中の問題番号を格納
    var currentQuestionNum: Int = 0
    
    // 問題
      let questions: [[String: Any]] = [
          [
              "question": "iPhoneアプリを開発する統合環境はZcodeである",
              "answer": false
          ],
          [
              "question": "Xcode画面の右側にはユーティリティーズがある",
              "answer": true
          ],
          [
              "question": "UILabelは文字列を表示する際に利用する",
              "answer": true
          ]
      ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showQuestion() {
          let question = questions[currentQuestionNum]

          if let que = question["question"] as? String {
              questionLabel.text = que
          }
      }
    }
    
    
    
    
    
    @IBAction func tappendButton(_ sender: UIButton) {
    }
    
    @IBAction func tappendYesBitton(_ sender: UIButton) {
    }




}

