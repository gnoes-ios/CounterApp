//
//  ViewController.swift
//  CounterApp
//
//  Created by 박주성 on 2/11/25.
//

import UIKit

class MainViewController: UIViewController {

    private let mainView = MainView()
    private var countNumber: Int = 0
    
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAddTarget()
        updateUI()
    }
    

    private func setAddTarget() {
        mainView.plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        mainView.minusButton.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
    }
    
    @objc private func plusButtonTapped() {
        countNumber += 1
        updateUI()
    }
    
    @objc private func minusButtonTapped() {
        countNumber -= 1
        updateUI()
    }
    
    @objc private func resetButtonTapped() {
        countNumber = 0
        updateUI()
    }
    
    private func updateUI() {
        mainView.numberLabel.text = "\(countNumber)"
        checkNumber()
    }
    
    private func checkNumber() {
        mainView.plusButton.isEnabled = countNumber < 10
        mainView.minusButton.isEnabled = countNumber > -10

        mainView.plusButton.backgroundColor = mainView.plusButton.isEnabled ? .blue : .gray
        mainView.minusButton.backgroundColor = mainView.minusButton.isEnabled ? .red : .gray
    }
    
}


