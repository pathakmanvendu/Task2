//
//  ViewController2.swift
//  Task2
//
//  Created by manvendu pathak  on 22/03/24.
//

import UIKit

class ViewController2: UIViewController{
    
//MARK: - Variables
    
    var features = ["1-1 Video Sessions", "Fluency Score", "Session Notes", "Flexible Timing 24/7", "Tutor Selection","On the spot Correction", "Feedback Report"]
    var benefits = ["Become Confident", "Sound Natural", "Refine Vocabulary", "Correct Pronunciation", "Improve Grammar", "Tackle job interviews with ease"]
    
    
//MARK: - UI BUILDING
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    private func setup(){
        
        //ScrollView
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        //Constraints to pin the scrollView to the edges of the view
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
        
        //ContentView to hold all the UI elements
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        //Constraints to contentView to match the scrollView's size
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        
        
        //Adding Label
        let label = UILabel()
        label.text = "Features you get:"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(named: "Color2")
        label.translatesAutoresizingMaskIntoConstraints = false
        // Add label to the view
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        
        //Adding StackView
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        //Add Stack to the view
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10), // Adjust vertical position as needed
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20), // Adjust horizontal position as needed
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20) // Adjust horizontal position as needed
        ])
        
        
        
        //Adding labels in the Stack from the array
        addLabelsInStack(arrayData: features, stackView: stackView)
        
        
        //Creating second label
        let benefitsLabel = UILabel()
        benefitsLabel.text = "Benefits:"
        benefitsLabel.textColor = UIColor(named: "Color2")
        benefitsLabel.font = UIFont.systemFont(ofSize: 14)
        benefitsLabel.translatesAutoresizingMaskIntoConstraints = false
        //Adding Label to the View
        view.addSubview(benefitsLabel)
        NSLayoutConstraint.activate([
            benefitsLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10), // Adjust vertical position as needed
            benefitsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20), // Adjust horizontal position as needed
            
        ])
        
        
        //Creating the Second Stack
        let stackView2 = UIStackView()
        stackView2.axis = .vertical
        stackView2.alignment = .leading
        stackView2.distribution = .fill
        stackView2.spacing = 2
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        //Adding the stack to the view
        view.addSubview(stackView2)
        NSLayoutConstraint.activate([
            stackView2.topAnchor.constraint(equalTo: benefitsLabel.bottomAnchor, constant: 10), // Adjust vertical position as needed
            stackView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20), // Adjust horizontal position as needed
            stackView2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20) // Adjust horizontal position as needed
        ])
        
        //Adding the labels in the second Stack View
        addLabelsInStack(arrayData: benefits, stackView: stackView2)
    }
    
    
    
    
//MARK: - Functions
    func addLabelsInStack(arrayData: [String], stackView: UIStackView){
        let _: [UILabel] = []
        for string in  arrayData {
            let label = UILabel()
            label.text =  "✓  " + string
            label.font = UIFont.systemFont(ofSize: 12)
            label.textColor = UIColor(named: "Color2")
            label.translatesAutoresizingMaskIntoConstraints = false
            
            stackView.addArrangedSubview(label)
        }
    }
}
