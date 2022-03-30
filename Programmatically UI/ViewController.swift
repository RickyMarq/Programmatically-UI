//
//  ViewController.swift
//  Programmatically UI
//
//  Created by Henrique Marques on 18/03/22.
//

import UIKit
import SkyFloatingLabelTextField
import LGButton

class ViewController: UIViewController, UITextFieldDelegate {
    
    lazy var imageView: UIImageView = {
        let image = UIImage(named: "Piano")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    lazy var WelcomeText: UILabel = {
        let textfield = UILabel()
        textfield.text = "Entre"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.font = UIFont.boldSystemFont(ofSize: 35)
        textfield.textAlignment = .center
        return textfield
    }()
    
    lazy var MailField: SkyFloatingLabelTextFieldWithIcon = {
        let mailFrame = CGRect(x: 60, y: 300, width: 300, height: 50)
        let MailImage = UIImage(systemName: "envelope")
        let mail = SkyFloatingLabelTextFieldWithIcon(frame: mailFrame, iconType: .image)
        mail.translatesAutoresizingMaskIntoConstraints = false
        mail.selectedIconColor = .orange
        mail.selectedLineColor = .orange
        mail.title = "Insira seu email..."
        mail.placeholder = "E-mail"
        mail.iconImage = MailImage
        mail.iconMarginBottom = 1
        mail.autocapitalizationType = .none
        mail.textContentType = .password
        mail.autocorrectionType = .no
        return mail
    }()
    

    lazy var PasswordField: SkyFloatingLabelTextFieldWithIcon = {
        let passwordFrame = CGRect(x: 60, y: 400, width: 300, height: 50)
        let passwordimage = UIImage(systemName: "lock")
        let password = SkyFloatingLabelTextFieldWithIcon(frame: passwordFrame, iconType: .image)
        password.translatesAutoresizingMaskIntoConstraints = false
        password.selectedIconColor = .orange
        password.selectedLineColor = .orange
        password.isSecureTextEntry = true
        password.placeholder = "Senha"
        password.iconImage = passwordimage
        password.iconMarginBottom = 1
        password.title = "Insira sua senha..."
        return password
    }()
    
    lazy var LogginButton: LGButton = {
        let logginbutton = LGButton()
        logginbutton.titleString = "Login"
        logginbutton.titleFontSize = 24
        logginbutton.fullyRoundedCorners = true
        logginbutton.translatesAutoresizingMaskIntoConstraints = false
        logginbutton.gradientStartColor = .orange
        logginbutton.gradientEndColor = .red
        logginbutton.gradientHorizontal = true
        logginbutton.shadowColor = .orange
        logginbutton.shadowRadius = 5
        logginbutton.shadowOpacity = 1
        return logginbutton
        
    }()
    
    lazy var OrLabel: UILabel = {
        let or = UILabel()
        or.text = "ou"
        or.translatesAutoresizingMaskIntoConstraints = false
        or.textAlignment = .center
        or.textColor = .gray
        return or
    }()
    
    lazy var GoogleButton: LGButton = {
        let GoogleButton = LGButton()
        let GoogleImage = UIImage(named: "google")
        GoogleButton.translatesAutoresizingMaskIntoConstraints = false
        GoogleButton.rightImageSrc = GoogleImage
        GoogleButton.rightIconColor = .orange
        GoogleButton.fullyRoundedCorners = true
        GoogleButton.rightImageHeight = 30
        GoogleButton.rightImageWidth = 30
        GoogleButton.bgColor = .white
        GoogleButton.rightImageColor = .orange
        GoogleButton.shadowRadius = 5
        GoogleButton.shadowColor = .systemOrange
        GoogleButton.shadowOpacity = 1
        return GoogleButton
    }()
    
    lazy var TwitterButton: LGButton = {
        let TwitterButton = LGButton()
        let TwitterImage = UIImage(named: "twitter")
        TwitterButton.translatesAutoresizingMaskIntoConstraints = false
        TwitterButton.rightImageSrc = TwitterImage
        TwitterButton.rightIconColor = .orange
        TwitterButton.fullyRoundedCorners = true
        TwitterButton.rightImageHeight = 100
        TwitterButton.rightImageWidth = 100
        TwitterButton.bgColor = .white
        TwitterButton.rightImageColor = .orange
        TwitterButton.shadowRadius = 5
        TwitterButton.shadowColor = .systemOrange
        TwitterButton.shadowOpacity = 1
        return TwitterButton
    }()
    
    lazy var FacebookButton: LGButton = {
        let FacebookButton = LGButton()
        let FacebookImage = UIImage(named: "facebook")
        FacebookButton.translatesAutoresizingMaskIntoConstraints = false
        FacebookButton.rightImageSrc = FacebookImage
        FacebookButton.rightIconColor = .orange
        FacebookButton.fullyRoundedCorners = true
        FacebookButton.rightImageHeight = 100
        FacebookButton.rightImageWidth = 100
        FacebookButton.bgColor = .white
        FacebookButton.rightImageColor = .orange
        FacebookButton.shadowRadius = 5
        FacebookButton.shadowColor = .systemOrange
        FacebookButton.shadowOpacity = 1
        return FacebookButton
    }()
    
    lazy var ExistingAccount: UILabel = {
        let ExistingAccount = UILabel()
        ExistingAccount.translatesAutoresizingMaskIntoConstraints = false
        ExistingAccount.text = "Não tem conta ? Cadastre-se"
        ExistingAccount.textColor = .orange
        ExistingAccount.textAlignment = .center
        return ExistingAccount
    }()
    
    
    let padding: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        view.addSubview(imageView)
        view.addSubview(WelcomeText)
        view.addSubview(MailField)
        view.addSubview(PasswordField)
        view.addSubview(LogginButton)
        view.addSubview(OrLabel)
        view.addSubview(GoogleButton)
        view.addSubview(TwitterButton)
        view.addSubview(FacebookButton)
        view.addSubview(ExistingAccount)
        
        setupLayout()
    }
    
    
    
    private func setupLayout() {
        let topimageContainerView = UIView()
        topimageContainerView.backgroundColor = .systemGray
        topimageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topimageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let constraints = [
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 imageView.topAnchor.constraint(equalTo: view.topAnchor),
                 imageView.widthAnchor.constraint(equalToConstant: 220),
                 imageView.heightAnchor.constraint(equalToConstant: 220),
            
                 WelcomeText.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
                 WelcomeText.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: 95 ),
                 MailField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -70),
                 MailField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 PasswordField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 PasswordField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         
         
         
                 LogginButton.topAnchor.constraint(equalTo: PasswordField.bottomAnchor, constant: 30),
                 LogginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 LogginButton.widthAnchor.constraint(equalToConstant: 300),
                 LogginButton.heightAnchor.constraint(equalToConstant: 50),
         
                 OrLabel.centerXAnchor.constraint(equalTo: LogginButton.centerXAnchor),
                 OrLabel.centerYAnchor.constraint(equalTo: LogginButton.centerYAnchor, constant: 55),
         
                 TwitterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 185),
                 TwitterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 TwitterButton.widthAnchor.constraint(equalToConstant: 50),
                 TwitterButton.heightAnchor.constraint(equalToConstant: 50),
         
                 GoogleButton.centerYAnchor.constraint(equalTo: TwitterButton.centerYAnchor),
                 GoogleButton.centerXAnchor.constraint(equalTo: TwitterButton.centerXAnchor, constant: -70),
                 GoogleButton.widthAnchor.constraint(equalToConstant: 50),
                 GoogleButton.heightAnchor.constraint(equalToConstant: 50),
         
                 FacebookButton.centerXAnchor.constraint(equalTo: TwitterButton.centerXAnchor,constant: 70),
                 FacebookButton.centerYAnchor.constraint(equalTo: TwitterButton.centerYAnchor),
                 FacebookButton.widthAnchor.constraint(equalToConstant: 50),
                 FacebookButton.heightAnchor.constraint(equalToConstant: 50),
         
                 ExistingAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100),
                 //ExistingAccount.centerYAnchor.constraint(equalTo: TwitterButton.centerYAnchor, constant: 125).isActive = true
                 ExistingAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 ExistingAccount.widthAnchor.constraint(equalToConstant: 300),
                 ExistingAccount.heightAnchor.constraint(equalToConstant: 300),
        
        ]
        NSLayoutConstraint.activate(constraints)
  }
}
