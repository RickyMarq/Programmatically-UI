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

    lazy var imageView: UIImageView = {
        let image = UIImage(named: "Piano")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    lazy var WelcomeText: UILabel = {
        let textfield = UILabel()
        textfield.text = "Sign In"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.font = UIFont.boldSystemFont(ofSize: 30)
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
      //  logginbutton.frame = CGRect(x: 50, y: 400, width: 300, height: 50)
        return logginbutton
        
    }()
    
    lazy var OrLabel: UILabel = {
        let or = UILabel()
        or.text = "or"
        or.translatesAutoresizingMaskIntoConstraints = false
        or.textAlignment = .center
        or.textColor = .gray
        return or
    }()
    
    lazy var GoogleButton: LGButton = {
        let GoogleButton = LGButton()
        let GoogleImage = UIImage(named: "google")
        GoogleButton.frame = CGRect(x: 50, y: 550, width: 50, height: 50)
        GoogleButton.rightImageSrc = GoogleImage
        GoogleButton.rightIconColor = .orange
        GoogleButton.fullyRoundedCorners = true
        GoogleButton.bgColor = .white
   //     GoogleButton.gradientStartColor = .orange
   //     GoogleButton.gradientEndColor = .red
   //     GoogleButton.gradientHorizontal = true
        GoogleButton.rightImageColor = .gray
        GoogleButton.shadowRadius = 5
        GoogleButton.shadowColor = .systemOrange
        GoogleButton.shadowOpacity = 1
        return GoogleButton
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
        setupLayout()
    }
    
    
    
    private func setupLayout() {
        let topimageContainerView = UIView()
        topimageContainerView.backgroundColor = .systemGray
        topimageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topimageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Constrains: ImageView
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: -400).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        //
   //     WelcomeText.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive  = true
    //    WelcomeText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
      //  WelcomeText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // WelcomeText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        WelcomeText.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -450).isActive = true
        WelcomeText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        WelcomeText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -450).isActive = true
        
        MailField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -70).isActive = true
        MailField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        PasswordField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        PasswordField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        
        LogginButton.topAnchor.constraint(equalTo: PasswordField.bottomAnchor, constant: 30).isActive = true
        LogginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        LogginButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        LogginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        OrLabel.centerXAnchor.constraint(equalTo: LogginButton.centerXAnchor).isActive = true
        OrLabel.centerYAnchor.constraint(equalTo: LogginButton.centerYAnchor, constant: 55).isActive = true
  //      OrLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
  //      OrLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
}

