import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet var choicesButtons: [UIButton]!

    var questionData = QuestionData()

    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
        updateUI()
    }

    @objc func updateUI() {

        questionLabel.text = questionData.getQuestionText()
        progressBar.progress = questionData.getProgress()

        let currentQuestionIndex = questionData.questionNum
        for button in choicesButtons {
            button.setTitle(questionData.quiz[currentQuestionIndex].choices[choicesButtons.firstIndex(of: button)!], for: [])
            button.backgroundColor = UIColor.clear
        }
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        guard let userAnswer = sender.currentTitle else { return }
        let userGotRight = questionData.checkAnswer(userAnswer)

        userGotRight ? (sender.backgroundColor = UIColor.green) : (sender.backgroundColor = UIColor.red)

        questionData.nextQuestion()

        Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
}

