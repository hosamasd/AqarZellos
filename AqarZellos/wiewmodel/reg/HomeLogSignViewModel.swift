//
//  HomeLogSignViewModel.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

class HomeLogSignViewModel: ObservableObject {
    
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    @Published var isLogin=false
    @Published var emailLogin=""
    @Published var passLogin=""
    @Published var isLoginShowPass=true
    
    @Published var emailSign=""
    @Published var usernameSign=""
    @Published var PhoneSign=""
    
    @Published var isForget=false
    
    @Published var emailForget=""
    
    @Published var passSign=""
    @Published var rePassSign=""
    
    @Published var isShowPass=true
    @Published var isShowRePass=true
    
    
    func getText() -> String {
        isForget ? "Forget Password" : "Login"
    }
    
    //    func checkPhone(p:String) -> Bool {
    //        return  p.isValidPhoneNumber ? true : false
    //    }
    
    func checkPhone(p:String) -> Bool {
        p.count >= 3 ? false : true
        //        return  p.isValidPhoneNumber ? true : false
    }
    
    func checkUserName() -> Bool {
        checkData(p: usernameSign)
    }
    
    func checkPassword(x:String) -> Bool {
        checkData(p: x)
    }
    
    func checkPasswordAndRe() -> Bool {
        passSign==rePassSign
    }
    
    func checkData(p:String,size:Int = 3) -> Bool {
        p.count >= size
    }
    
    func forgetPasswords()  {
        
        if checkPhone(p: emailForget) {
            self.alertMsg = "Please type valid Phone number"
            self.alert.toggle()
            return
        }
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            withAnimation{self.isLoading.toggle()}
            DispatchQueue.main.async {
                self.isForget.toggle()
                
            }
        }
        
    }
    
    
    func makeSignUp()  {
        
        if !checkUserName() {
            self.alertMsg = "Please type valid Username"
            self.alert.toggle()
            return
        }
        
        if checkPhone(p: PhoneSign) {
            self.alertMsg = "Please type valid Phone number"
            self.alert.toggle()
            return
        }
        
        if !emailSign.isValidEmail {
            self.alertMsg = "Please type valid Phone number"
            self.alert.toggle()
            return
        }
        
        if !checkPassword(x:passSign) {
            self.alertMsg = "Please type valid Password"
            self.alert.toggle()
            return
        }
        
        if !checkPasswordAndRe() {
            self.alertMsg = "Please make Password and confirm password same!"
            self.alert.toggle()
            return
        }
        
        
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLoading.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
                
            }
        }
        
    }
    
    func makeLogin()  {
        
        if checkPhone(p: emailLogin) {
            self.alertMsg = "Please type valid Phone number"
            self.alert.toggle()
            return
        }
        
        if !checkPassword(x:passLogin) {
            self.alertMsg = "Please type valid Password"
            self.alert.toggle()
            return
        }
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLoading.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
                
            }
        }
    }
    
}
