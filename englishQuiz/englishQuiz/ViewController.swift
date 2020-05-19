import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        let vc = QuizViewController()
        vc.englishQuizzes = fetchQuizzes()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true, completion: nil)
    }
    
    let A = QuizFixture.test(
        question: "Which human is fast to run?\n\n1) Joe \n2) Sai \n3) X \n4) Zero",
        answerCount: 4, answer: 4)
    
    
    let B = QuizFixture.test(
        question: "Which animal is fast to run?\n\n1) Panda \n2) Elephant \n3) Giraffe \n4) Cheetah",
        answerCount: 4, answer: 4)
    
    let C = QuizFixture.test(
        question: "How many minutes a day?\n\n1) 1680 min\n2) 2880 min\n3) 1440 min",
        answerCount: 3, answer: 3)
    
    private func fetchQuizzes() -> [Quiz] {
        return[
        A, B, C
]
            
        
    }
}

