
import Foundation
import UIKit

class WelcomeViewController_Closure: UIViewController {
    
    //String을 갖고 어떠한 행동을 담기위해 클로저를 생성
    private var id: String?


    typealias handler = ((String) -> (Void))
    var completionHandler: handler?
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 112, y: 87, width: 150, height: 150))
        imageView.image = UIImage(named: "rabbit")
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
        label.text = "???님\n반가워요!"
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-ExtraBold", size: 25)
        
        return label
    }()
    
    private lazy var mainButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 426, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        return button
    }()
    
    private lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 498, width: 335, height: 58))
        button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue:227/255, alpha: 1)
        button.setTitle("다시 로그인", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        button.layer.cornerRadius = 6
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        return button
    }()
    
    private func bindID() {
            guard let idText = id else { return }
            self.welcomeLabel.text = "\(idText)님 \n반가워요!"
        }
        
        func setLabelText(id: String?) {
            self.id = id
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.view.backgroundColor = .white
            setLayout()
            
            bindID()
        }
        
        private func setLayout() {
            [imageView, welcomeLabel, mainButton, backToLoginButton].forEach {
                self.view.addSubview($0)
            }
        }
        
        @objc
        private func backToLoginButtonDidTap() {
            guard let id else { return }
            completionHandler?(id)
            self.navigationController?.popViewController(animated: true)
        }
    }


