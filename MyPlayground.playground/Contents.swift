//: Playground - noun: a place where people can play

import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

import RxSwift

example("just") { 
    
    let observable = Observable.just("Hello, RxSwift")
    
    observable.subscribe({ (event) in
        print(event)
    })
}

//
//example("of") { 
//    
//    let observable = Observable.of(1,2,3,4,5,6)
//    observable.subscribe({ (event) in
//        print(event)
//    })
//    
//}

//example("create") {
//    let items = [1,2,3,4,5]
//    Observable.from(items).subscribe(onNext: { (event) in
//        print(event)
//    }, onError: { (error) in
//        print(error)
//    }, onCompleted: {
//        print("OK!")
//    }, onDisposed: {
//        print("dispoded")
//    })
//}

//example("disposable") {
//    let seq = [1,2,3]
//    Observable.from(seq).subscribe({ (event) in
//        print(event)
//    })
//    Disposables.create()
//}

//example("dispose") {
//    let seq = [1,2,3]
//    let subscription = Observable.from(seq)
//    subscription.subscribe({ (event) in
//        print(event)
//    }).dispose()
//}

//example("disposeBag") {
//    let disposeBag = DisposeBag()
//    let seq = [1,2,3]
//    let subscription = Observable.from(seq)
//    subscription.subscribe({ (event) in
//        print(event)
//    }).addDisposableTo(disposeBag)
//}

//example("PublishSubject") {
//    let disposable = DisposeBag()
//
//    let subject = PublishSubject<String>()
//
//    subject.subscribe({ (event) in
//        print("First: ", event)
//    }).addDisposableTo(disposable)
//
//    subject.on(Event<String>.next("Hello"))
//    subject.onNext("swift")
//
//    subject.subscribe(onNext: { (event) in
//        print("Second: ", event)
//    }).addDisposableTo(disposable)
//
//    subject.onNext("My name is Ruslan")
//}











