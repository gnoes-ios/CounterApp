//
//  MainView.swift
//  CounterApp
//
//  Created by 박주성 on 2/11/25.
//

import UIKit

class MainView: UIView {

    var numberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        button.backgroundColor = .blue
        return button
    }()
    
    var minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        button.backgroundColor = .red
        return button
    }()
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("RESET", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.backgroundColor = .black
        return button
    }()
    
    private lazy var counterStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [minusButton, plusButton])
        stackView.axis = .horizontal
        stackView.spacing = 30
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var mainButtonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [counterStackView, resetButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        backgroundColor = .white
        [numberLabel, mainButtonStackView].forEach { addSubview($0) }
        
        setupAutoLayout()
    }
    
    private func setupAutoLayout() {
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        mainButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            numberLabel.centerYAnchor.constraint(equalTo: centerYAnchor),

            mainButtonStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            mainButtonStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            mainButtonStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            mainButtonStackView.heightAnchor.constraint(equalToConstant: 110)
        ])
    }
    
}
