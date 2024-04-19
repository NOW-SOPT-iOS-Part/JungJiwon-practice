//
//  ScrollView.swift
//  34th-Sopt-Seminar
//
//  Created by  정지원 on 2024/04/19.
//
import Foundation
import UIKit
import SnapKit

class ScrollViewController: UIViewController {
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    
    private var redView: UIView = {
            let RedView = UIView()
            RedView.backgroundColor = .red
            return RedView
        }()
    
    private var orangeView: UIView = {
            let OrangeView = UIView()
            OrangeView.backgroundColor = .orange
            return OrangeView
        }()
    
    private var yellowView: UIView = {
            let YellowView = UIView()
            YellowView.backgroundColor = .yellow
            return YellowView
        }()
    
    private var greenView: UIView = {
            let GreenView = UIView()
            GreenView.backgroundColor = .green
            return GreenView
        }()

    private var blueView: UIView = {
            let BlueView = UIView()
            BlueView.backgroundColor = .blue
            return BlueView
        }()
    
    private var purpleView: UIView = {
            let PurpleView = UIView()
            PurpleView.backgroundColor = .purple
            return PurpleView
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach {
            contentView.addSubview($0)
        }
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(scrollView)
            make.width.equalTo(scrollView)
            make.height.greaterThanOrEqualToSuperview().priority(.low) // contentView의 height가 scrollView의 height보다 크거나 같도록 설정합니다. 우선순위는 낮습니다.
        }
        
        redView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(contentView)
            make.height.equalTo(300)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        orangeView.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.leading.equalTo(redView.snp.trailing)
            make.height.equalTo(300)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        yellowView.snp.makeConstraints { make in
            make.top.equalTo(redView.snp.bottom)
            make.leading.equalTo(contentView)
            make.height.equalTo(300)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        greenView.snp.makeConstraints { make in
            make.top.equalTo(orangeView.snp.bottom)
            make.leading.equalTo(yellowView.snp.trailing)
            make.height.equalTo(300)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        blueView.snp.makeConstraints { make in
            make.top.equalTo(yellowView.snp.bottom)
            make.leading.bottom.equalTo(contentView)
            make.height.equalTo(300)
            make.width.equalToSuperview().multipliedBy(0.5)
            make.bottom.equalTo(contentView) // contentView의 마지막 요소로, bottom을 설정합니다.
        }
        purpleView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.bottom)
            make.bottom.trailing.equalTo(contentView)
            make.height.equalTo(300)
            make.width.equalToSuperview().multipliedBy(0.5)
        }
    }
}
