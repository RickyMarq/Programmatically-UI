//
//  ViewController.swift
//  Programmatically UI
//
//  Created by Henrique Marques on 18/03/22.
//

import UIKit

class ViewController: UIViewController {

    let imageView: UIImageView = {
        let image = UIImage(named: "Piano")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let descriptiontext: UILabel = {
        let textfield = UILabel()
        textfield.text = "Welcome to Acoustic"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.font = UIFont.boldSystemFont(ofSize: 18)
       // textfield.isEditable = false
       //textfield.isScrollEnabled = false
        textfield.textAlignment = .center
        return textfield
    }()
    
    let emailtext: UITextField = {
        let email = UITextField()
        email.layer.cornerRadius = 12
        email.layer.borderWidth = 1
        email.backgroundColor = .darkGray
        email.placeholder = "Email..."
        email.keyboardType = .emailAddress
        email.frame = CGRect(x: 100, y: 270, width: 200, height: 50)
        return email
    }()
    
    // PICKERS
     
    let date: UIDatePicker = {
        let dat = UIDatePicker()
        dat.frame = CGRect(x: 10, y: 400, width: 300, height: 300)
        return dat
    }()
    
    let label: UILabel = {
        let lab = UILabel()
        lab.text = "AA"
    }()
    
    
    let ImagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray
        view.addSubview(imageView)
        view.addSubview(descriptiontext)
        view.addSubview(emailtext)
        view.addSubview(date)
        view.addSubview(label)
        setupLayout()
        
        
    }
    
    
    
    private func setupLayout() {
        let topimageContainerView = UIView()
        topimageContainerView.backgroundColor = .systemGray
        view.addSubview(topimageContainerView)
        topimageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topimageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Constrains:
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
        
        //
        descriptiontext.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive  = true
        descriptiontext.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptiontext.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptiontext.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
}

