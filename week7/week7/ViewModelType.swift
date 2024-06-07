//
//  ViewModelType.swift
//  week7
//
//  Created by  정지원 on 5/25/24.
//

import RxSwift

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(from input: Input, disposeBag: RxSwift.DisposeBag) -> Output
}
