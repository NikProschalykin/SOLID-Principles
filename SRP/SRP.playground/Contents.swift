import UIKit
import Foundation

/*
 Существует лишь одна причина, приводящая к изменению класса. Один класс решает одну конкретную задачу. Все свойства и методы данного класса должны служить одной и только одной цели.
 */


// Плохой пример

class FitnessClubMember{
    func makeBoxTraining() {
        print("Make a box training")
    }
    
    func accountMonthSalary(){
        print("Account and pay money to fitness club employees")
    }
    
    func negotiateWithInvestors(){
        print("Negotiate with investors to expand revenue")
    }
    
    func buyNewEquipment(){
        print("Buy new gym equipment")
    }
    
    func approveNewBusinessPlan(){
        print("Approve new business plan")
    }
}

var coach = FitnessClubMember()
coach.makeBoxTraining()

var accounter = FitnessClubMember()
accounter.accountMonthSalary()

var director = FitnessClubMember()
director.approveNewBusinessPlan()
director.negotiateWithInvestors()

var manager = FitnessClubMember()
manager.buyNewEquipment()


// Хороший пример

class FitnessClubCoach{
    func makeBoxTraining() {
        print("Make a box training")
    }
}

class FitnessClubAccounter{
    func accountMonthSalary(){
        print("Account and pay money to fitness club employees")
    }
}

class FitnessClubDirector{
    func negotiateWithInvestors(){
        print("Negotiate with investors to expand revenue")
    }
    
    func approveNewBusinessPlan(){
        print("Approve new business plan")
    }
}

class FitnessClubManager{
    func buyNewEquipment(){
        print("Buy new gym equipment")
    }
}

var coach2 = FitnessClubCoach()
coach2.makeBoxTraining()

var accounter2 = FitnessClubAccounter()
accounter2.accountMonthSalary()

var director2 = FitnessClubDirector()
director2.approveNewBusinessPlan()
director2.negotiateWithInvestors()

var manager2 = FitnessClubManager()
manager2.buyNewEquipment()
