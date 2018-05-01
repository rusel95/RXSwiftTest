//
//  ViewController.swift
//  RXSwiftTest
//
//  Created by Admin on 10.04.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        example("BehaviorSubject") {
//            let disposableBag = DisposeBag()
//            let subject = BehaviorSubject(value: 1)
//
//            let firstSubject = subject.subscribe(onNext: {
//                print(#line, $0)
//            }).addDisposableTo(disposableBag )
//
//            subject.onNext(2)
//            subject.onNext(3)
//
//            let secondSubject = subject.subscribe(onNext: {
//                print(#line, $0)
//            }).addDisposableTo(disposableBag )
//        }
        
//        example("ReplaySubject") {
//            let disposableBag = DisposeBag()
//
//            let subject = ReplaySubject<String>.create(bufferSize: 5)
//
//            subject.subscribe({
//                print("First subscription: ", $0)
//            }).addDisposableTo(disposableBag)
//
//            subject.onNext("a")
//            subject.onNext("a1")
//            subject.onNext("a2")
//            subject.onNext("b")
//
//            subject.subscribe {
//                print("Second subscriprion: ", $0)
//            }.addDisposableTo(disposableBag)
//
//            subject.onNext("c")
//            subject.onNext("d")
//        }
        
        example("Variables") {
            let disposableBag = DisposeBag()
            
            let variable = Variable("A")
            
            variable.asObservable().subscribe(onNext: {
                print($0)
            }).addDisposableTo(disposableBag)
            
            variable.value = "B"
            variable.value = "C"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

