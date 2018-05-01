//
//  ViewController.swift
//  RXSwiftTest
//
//  Created by Admin on 10.04.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    let disposeBag = DisposeBag()
    let textFieldText = Variable("")
    let buttonSubject = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.rx.text.map { $0 ?? ""}.bind(to: textFieldText).addDisposableTo(disposeBag)
        
        textFieldText.asObservable().subscribe(onNext: { (textFieldValue) in
            print(#line, textFieldValue)
        }, onError: nil, onCompleted: nil, onDisposed: nil).addDisposableTo(disposeBag)
        
        button.rx.tap.map { self.textFieldText.value }.bind(to: buttonSubject).addDisposableTo(disposeBag)
    
        buttonSubject.asObservable().subscribe(onNext: {
            print($0)
        }, onError: nil, onCompleted: nil, onDisposed: nil).addDisposableTo(disposeBag)
    }

}

