//
//  ViewController.swift
//  MVVMSample1
//
//  Created by 鈴木楓香 on 2023/02/06.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var resetPasswordButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "Tap Login Button!"
        })
        .disposed(by: disposeBag)
        
        resetPasswordButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "Tap Rest Button"
        })
        .disposed(by: disposeBag)
        
        exitButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "Tap Exit Button"
        })
        .disposed(by: disposeBag)
        
        helpButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "Tap Help Button"
        })
        .disposed(by: disposeBag)
    }


}

