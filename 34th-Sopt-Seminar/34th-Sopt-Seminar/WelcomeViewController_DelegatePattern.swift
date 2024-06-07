//
//  WelcomeViewController_DelegatePattern.swift
//  34th-Sopt-Seminar
//
//  Created by  정지원 on 2024/04/16.
//

import Foundation
import UIKit

protocol DataBindProtocol: AnyObject {
    func dataBind(id: String?)
}

final class WelcomeViewController_Delegate_Pattern: UIViewController {
    private var id: String?
    //weak -> 참조 대상이 메모리에서 해제될 때 자동으로 nil로 설정
    weak var delegate: DataBindProtocol?
    //private -> 해당 멤버가 정의된 범위 내에서만 접근할 수 있도록 제한
    
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
        if let id = id {
                delegate?.dataBind(id: id)
            }
            self.navigationController?.popViewController(animated: true)
    }
}



