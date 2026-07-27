import SwiftUI
import UserNotifications

// utilisateur
struct Eleve {
    var pseudo: String
    var image: String
    var niveau: Niveau
    var progress: [Progress]
}
//niveau scolaire eleve
enum Niveau: String {
    case sixième = "6ème"
    case cinquième = "5ème"
    case quatrième = "4ème"
    case troisième = "3ème"
}

struct Progress {
    var matière: Matiere
    var lvl: Int
}

//français, histoire, maths...
struct Matiere: Identifiable {
    var id = UUID()
    var nom: String
    var abrev: String
    var image: String
    var couleur: String
    var couleurombre : String
    var theme: [Theme]
}

//type d'exo dans la matière
struct Theme: Identifiable {
    var id: UUID = UUID()
    var nom: String
    var image: String
    var vidéo: String
    var leçon: String
    var niveau: Niveau
    var question: [Question]
    var vies = 5
}


//le quizz
struct Question {
    var id: Int
    var question: String
    var reponses: String
    var bonneReponse: Bool
//    var messageEncouragement: MessageEncouragement
    
//    func calculBonneResponse(reponseUtilisateur: String) -> Int {
//        if reponseUtilisateur == bonneReponse {
//            
//            return 0
//        }
//        return 0
//    }
    
}

//en lien avec le quizz, si réussite, msg félicitation sinon encouragement
enum MessageEncouragement: String {
    case excellent = "bien ouej"
    case trèsBon
    case bon
    case passable
    case insuffisant
    //
}


class NotificationManager {
    
    static let instance = NotificationManager()
    
    func requestNotificationPermission() {
        let options: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (granted, error) in
            if let error = error {
                print("Error :\(error)")
            } else {
                print("Permission Granted")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Journée de la femme"
        content.subtitle = "Le 8 mars est la journée de la femme, vient en apprendre plus"
        content.sound = .default
        content.badge = 1
        
        //time
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        //calender
        
        
        
        //location
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
            content.userInfo = ["view": "TextView"]
        
        UNUserNotificationCenter.current().add(request)
    }
}

//NotificationManager.instance.requestNotificationPermission()
