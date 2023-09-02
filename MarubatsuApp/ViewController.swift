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
        showQuestion()
        // Do any additional setup after loading the view.
    }
    //配列の0番目を出します 除書の中からクエスチョンを出す
    func showQuestion() {
        let question = questions[currentQuestionNum]
        
        if let que = question["question"] as? String {
            questionLabel.text = que
        }
    }
    
    // 回答をチェックする関数
    // 回答チェックの関数、正解なら次の問題を表示
    func checkAnswer(yourAnswer: Bool) {
        let question = questions[currentQuestionNum]
        
        if let ans = question["answer"] as? Bool {
            
            if yourAnswer == ans {
                // 正解のときの処理
                // currentQuestionNumを1足して次の問題に進む 配列の1番目が呼び出される
                currentQuestionNum += 1
                showAlert(message: "正解！")
                
            } else {
                // 不正解のときの処理
                showAlert(message: "不正解…")
                
            }
        } else {
            print("答えが入ってません")
            return
        }
        // currentQuestionNumの値が問題数以上だったら最初の問題に戻す
              if currentQuestionNum >= questions.count {
                  currentQuestionNum = 0
              }
        
        // 問題を表示します。
        // 正解であれば次の問題が、不正解であれば同じ問題が再表示されます。
        showQuestion()
        
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        alert.addAction(close)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tappendButton(_ sender: UIButton) {
        checkAnswer(yourAnswer: false)
    }
    
    @IBAction func tappendYesBitton(_ sender: UIButton) {
        checkAnswer(yourAnswer: true)
    }
    
    
    
    
}

