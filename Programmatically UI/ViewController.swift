//
//  ViewController.swift
//  Programmatically UI
//
//  Created by Henrique Marques on 18/03/22.
//

import UIKit
import SkyFloatingLabelTextField
import LGButton

class ViewController: UIViewController {

    let imageView: UIImageView = {
        let image = UIImage(named: "Piano")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let WelcomeText: UILabel = {
        let textfield = UILabel()
        textfield.text = "Welcome to Acoustic"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.font = UIFont.boldSystemFont(ofSize: 18)
        textfield.textAlignment = .center
        return textfield
    }()
    
    let MailField: SkyFloatingLabelTextFieldWithIcon = {
        let mailFrame = CGRect(x: 60, y: 300, width: 250, height: 50)
        let MailImage = UIImage(named: "Mail")
        let mail = SkyFloatingLabelTextFieldWithIcon(frame: mailFrame, iconType: .image)
        mail.placeholder = "E-mail"
        mail.iconImage = MailImage
        return mail
    }()
    
    let PasswordField: SkyFloatingLabelTextFieldWithIcon = {
       let password = SkyFloatingLabelTextFieldWithIcon()
        password.placeholder = "Senha"
        password.title = "Insira sua senha..."
        return password
    }()
    
    let LogginButton: LGButton = {
        let logginbutton = LGButton()
        logginbutton.titleString = "Login"
        logginbutton.titleFontSize = 24
        logginbutton.fullyRoundedCorners = true
        //logginbutton.bgColor = .orange
        logginbutton.gradientStartColor = .orange
        logginbutton.gradientEndColor = .red
        logginbutton.gradientHorizontal = true
    
        logginbutton.frame = CGRect(x: 50, y: 400, width: 250, height: 50)
        return logginbutton
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        view.addSubview(imageView)
        view.addSubview(WelcomeText)
        view.addSubview(MailField)
        view.addSubview(LogginButton)
        setupLayout()
        
        
        
        
    }
    
    
    
    private func setupLayout() {
        let topimageContainerView = UIView()
        topimageContainerView.backgroundColor = .systemGray
        topimageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topimageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Constrains: ImageView
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        //imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        //imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        
        
        //
        WelcomeText.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive  = true
        WelcomeText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        WelcomeText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        WelcomeText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
}

