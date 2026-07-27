//
//  Questionnairev3.swift
//  Dynamics
//
//  Created by lambda on 17/03/2025.
//

import SwiftUI

struct Questions: View {
    //
    func maunction() {
        if questions[questionIndex].id == 3{
    
        }

    }
    
    func transitionfaute () {
        showResults = true
    }
    
    
    @State private var questions: [Question] = [
        Question(id: 1, question: "Un pull à 60 euros est soldé à 20%. Quel est son prix ?", reponses: "3", bonneReponse: true),
        Question(id: 2, question: "Quel est l'encadrement à l'unité du nombre de 4,58? ", reponses: "3", bonneReponse: true),
        Question(id: 3, question: "A quoi est égale la troncature d'un nombre décimal ?", reponses:  "3", bonneReponse: true),
        Question(id: 4, question: "VEUILLEZ REGARDER VOS RESULTATS ?", reponses:  "", bonneReponse: true)
    ]
    
    @State public var theme: Theme
    @State private var questionIndex = 0
    @State private var quqetionIndexmax = 3
    @State private var nameun: String = ""
    @State private var age: String = ""
    @State private var isActive: Bool = false
    @State private var showResults = false
    //LES REPONSES
    var countries = ["48€", "4€", "30€",  "4 < 4,56 < 5", "4 < 4,58 < 5", "4 < 4,59 < 5","A sa partie déciamele", "A sa part entière", "A l'abcisse","VOIR MES RESULTATS","VOIR LE CONTENU D'AUTRES COURS",""]
    
    var images = ["Jaugeuntier", "Jaugemillieu", "Jaugemaximum"]
    @State private var currentIndex = 0
    @State private var showButtonOne = true

    //
    @State private var correctAnswer = Int.random(in: 0...2)
    
    //
    @State private var number : Int = 0
    // Ne pas oublier le state !
    @State private var nbrcurrent : Int = 0
    @State private var nbrereponses : Int = 3
    //var answerdone : Bool = true
    @State private var textvide : String = " "
    @State private var textvidedeux : String = ""
    @State  private var score : Int = 0
    @State private var bonnereponse = "zero"
    @State var mauvaisereponse : Int = 0
    @State private var correct : String = ""
    @State private var nice : Int = 0
    static var greycolor: Color = Color(red: 239/255, green: 239/255, blue: 239/255)
    
    var body: some View {
        
        
                
                
                VStack {
                    VStack (){
                        
                        HStack {
                            
                            Image("exit")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.top, -170)
                            
                            ZStack {
                                
                                Image("polygone")
                                    .resizable()
                                    .frame(width: 180, height: 150)
                                    .padding(.top, -240)
                                
                                ZStack {
                                    HStack {
                                        Image(images[currentIndex])
                                            .resizable()
                                            .frame(width: 120, height: 19)
                                            .padding(.top, -160)
                                    }
                                }
                                
                                Text("\(questions[questionIndex].id)/3")
                                    .foregroundStyle(.white)
                                    .padding(.top, -160)
                            }
                            
                            
                            Image (systemName: "heart.fill")
                            
                                .resizable()
                                .frame(width: 35, height: 30)
                                .padding(.top, -170)
                                .foregroundColor(.red)
                            Text("\(theme.vies)")
                                .padding(.top, -170)
                        }
                        //Text("\(questions[questionIndex].id)")
                        Text("CALCUL")
                            .padding(.top, -100)
                            .font(.system(size: 25, weight: .bold))
                            .fontWeight(.bold)
                    }
                    
                    Text("\(questions[questionIndex].question)")
                        .padding(.top, -50)
                        .font(.system(size: 25, weight: .bold))
                        //.fontWeight(.bold)
                        
                    // Text("\(questions[questionIndex].id)")
                    //Afifher la valeur de bonneReponse
                    VStack (spacing : 30){
                        ForEach(nbrcurrent..<nbrereponses , id: \.self) { number in
                            
                            Button {
                                
                                if countries [number] == "48€" && questionIndex == 0{
                                    print("Cette reponse est correcte X1")
                                    questions[questionIndex].bonneReponse = true
                                    bonnereponse = "un"
                                    nice += 1
                                    
                                    
                                }
                                //ze
                                else if countries [number] == "4 < 4,58 < 5" && questionIndex == 1 {
                                    print("Cette reponse est correcte X2")
                                    questions[questionIndex].bonneReponse = true
                                    bonnereponse = "deux"
                                    nice += 1
                                }
                                
                                else if countries [number] == "A sa part entière" && questionIndex == 2 {
                                    print(" Cette reponse est corrrecte X3")
                                    questions[questionIndex].bonneReponse = true
                                    bonnereponse = "trois"
                                    showResults = true
                                    nice += 1
                                    showButtonOne = false
                                    
                                    
                                }
                                else if countries [number] == "4€" && questionIndex == 0 {
                                    print("Cette reponse est fausse X1")
                                    questions[questionIndex].bonneReponse = false
                                    theme.vies -= 1
                                    //mauvaisereponse -= 1
                                    
                                }
                                //
                                else if countries [number] == "30€" && questionIndex == 0 {
                                    print("Cette reponse est fausse X1")
                                    questions[questionIndex].bonneReponse = false
                                    theme.vies -= 1
                                    //mauvaisereponse -= 1
                                    
                                }
                                else if countries [number] == "4 < 4,56 < 5" && questionIndex == 1 {
                                    print("Cette reponse est fausse X1")
                                    questions[questionIndex].bonneReponse = false
                                    theme.vies -= 1
                                    mauvaisereponse += 1
                                    
                                }
                                else if countries [number] == "4 < 4,59 < 5" && questionIndex == 1 {
                                    print("Cette reponse est fausse X1")
                                    questions[questionIndex].bonneReponse = false
                                    theme.vies -= 1
                                    mauvaisereponse += 1
                                    
                                }
                                
                                else if countries [number] == "A sa partie déciamele" && questionIndex == 2 {
                                    print("Cette reponse est fausse X1")
                                    questions[questionIndex].bonneReponse = false
                                    theme.vies -= 1
                                    mauvaisereponse += 1
                                    
                                }
                                else if countries [number] == "Sebie" && questionIndex == 2 {
                                    print("Cette reponse est fausse X1")
                                    questions[questionIndex].bonneReponse = false
                                    theme.vies -= 1
                                    mauvaisereponse += 1
                                    
                                }
                                else if countries [number] == "VOIR MON RESULTAT" && questionIndex == 3 {
                                    print(" Cette reponse est corrrecte X4")
                                    questions[questionIndex].bonneReponse = true
                                    bonnereponse = "trois"
                                    showResults = true
                                    nice += 1
                                    
                                }
                                
                                //
                                
                            } label: {
                                //Image(countries[number])
                                Text(countries[number])
                            }
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.gray)
                            .font(.title2)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .font(.system(size: 35, weight: .bold))
                            .fontWeight(.bold)
                            
                            
                        }
                        if showButtonOne {
                            Button {
                                if questions[questionIndex].bonneReponse == false && theme.vies == 0 {
                                    print("Try again aucune reponse n'est bonne...")
                                    print("Reset du questionnaire")
                                    questionIndex = 0
                                    nbrcurrent = 0
                                    nbrereponses = 3
                                    theme.vies = 5
                                    textvidedeux = "Vous avez beaucoups trop d'erreur... \n Recommencez"
                                    transitionfaute ()
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        textvidedeux = " "
                                        maunction()
                                        mauvaisereponse += 1
                                        //Activationbutton()
                                        nice = 0
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                                if questions[questionIndex].bonneReponse == false && theme.vies < 0 {
                                    print("Try again aucune reponse n'est bonne...")
                                    print("Reset du questionnaire")
                                    questionIndex = 0
                                    nbrcurrent = 0
                                    nbrereponses = 3
                                    theme.vies = 5
                                    textvidedeux = "Vous avez beaucoups trop d'erreur... \n Recommencez"
                                    transitionfaute ()
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        textvidedeux = " "
                                        maunction()
                                        mauvaisereponse += 1
                                        //Activationbutton()
                                        nice = 0

                                    }
                                    
                                }
                                else if questions[questionIndex].bonneReponse == false && theme.vies < 5 {
                                    print ("Il y a encore trop d'erreur !")
                                    textvidedeux = "Saisissez une nouvelle reponse, \n faite attention à vos points de vie"
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        textvidedeux = " "
                                        maunction()
                                        
                                        
                                    }
                                }
                                
                                
                                //
                                else if questions[questionIndex].bonneReponse == true   {
                                    textvidedeux = "Vous avez bien repondu ! \n C'est parti pour la prochaine question"
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                                        textvidedeux = " "
                                    }
                                    nbrcurrent += 3
                                    nbrereponses += 3
                                    questionIndex += 1
                                    maunction()
                                    
                                    if  questions[questionIndex].bonneReponse == true && nice == 0  && mauvaisereponse == 0 && theme.vies == 5 && questionIndex == 3{
                                        print("sdz")
                                        print("Reset du questionnaire Secondaire ")
                                        questionIndex = 0
                                        nbrcurrent = 0
                                        nbrereponses = 3
                                        theme.vies = 5
                                        textvidedeux = "Vous avez beaucoups trop d'erreur... \n Recommencez"
                                        transitionfaute ()
                                        nice = 0
                                        }
                                }
                            // questions[questionIndex].bonneReponse == true  &&
                                else if  nice == 0  && mauvaisereponse == 0 && theme.vies == 5 && questionIndex == 3{
                                    print("sdz")
                                    print("Reset du questionnaire")
                                    questionIndex = 0
                                    nbrcurrent = 0
                                    nbrereponses = 3
                                    theme.vies = 5
                                    textvidedeux = "Vous avez beaucoups trop d'erreur... \n Recommencez"
                                    transitionfaute ()
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        textvidedeux = " "
                                    }
                                        maunction()
                                        mauvaisereponse += 1
                                        //Activationbutton()
                                        nice = 0
                                    }
                                    
                                /*
                                 //
                                 
                                 else if questions[questionIndex].id == 3  {
                                 showResults = true
                                 showButtonOne = false
                                 
                                 textvidedeux = "FELICITATION VOUS AVEZ TERMINE LE QUIZ"
                                 
                                 } */
                                // Si le nombre de question est egale à 2
                                
                                //else if
                                //{
                                    //textvide = "Vous ne repondez pas "
                                    //maunction()
                                    
                                //}
                                currentIndex = (currentIndex + 1) % images.count
                                //
                            } label: {
                                //Image(countries[number])
                                Text("VALIDER LA REPONSE")
                                    .font(.system(size: 25, weight: .bold))
                                    .fontWeight(.bold)
                                
                                
                            }
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.bottom , 20)
                            
                            
                            Text("\(textvidedeux)")
                            
                        }
                        
                        VStack() { // Espacement plus petit entre les boutons
                            // Bouton 1, qui est affiché ou caché en fonction de showButtonOne
                            // Bouton 2, qui est affiché en dessous lorsque showButtonOne est false
                            
                            //                    NavigationLink(destination: ResultView(name: nice, scoremauvaisereponse: mauvaisereponse), isActive: $showResults) {
                            if !showButtonOne {
                                Button {
                                    print("ok")
                                    showResults = true
                                    
                                } label: {
                                    //Image(countries[number])
                                    Text("Afficher les resultats")
                                    
                                }
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                //Navigation destination pourse rendre sur un autre fichier .
                                .navigationDestination(isPresented: $showResults) {
                                    ResultView(name: nice, scoremauvaisereponse: mauvaisereponse, lifepoint: theme.vies)
                                }
                            }
                        }
                        .padding()
                        .animation(.easeInOut, value: showButtonOne) // Animation pour la transition entre les boutons
                    }
                }
            }
        }
    
//
#Preview {

}
 
