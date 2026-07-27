//
//  data.swift
//  Duolingo
//
//  Created by Apprenant133 on 14/03/2025.
//

import Foundation

//LISTE DES MATIERES

var matieres = [
    Matiere(nom: "Mathématiques", abrev: "Maths", image: "maths", couleur: "rouge", couleurombre: "rougeombre", theme: [calcul, fraction, géométrie, espace, mesure, angle]),
    Matiere(nom: "Français", abrev: "Français", image: "français", couleur: "vert", couleurombre: "vertombre", theme: []),
    Matiere(nom: "Anglais", abrev: "Anglais", image: "anglais", couleur: "jaune", couleurombre: "jauneombre", theme: []),
    Matiere(nom: "Histoire", abrev: "Histoire", image: "histoire", couleur: "bleu", couleurombre: "bleuombre", theme: [orient, grèce, rome, femmes]),
    Matiere(nom: "Géographie", abrev: "Géo", image: "géo", couleur: "rose", couleurombre: "roseombre", theme: []),
    Matiere(nom: "Sciences et Vie de la Terre", abrev: "SVT", image: "svt", couleur: "oronge", couleurombre: "orongeombre", theme: []),
    Matiere(nom: "Physique-Chimie", abrev: "PC", image: "pc", couleur: "marron", couleurombre: "marronombre", theme: []),
    Matiere(nom: "Technologie", abrev: "Techno", image: "techno", couleur: "gris", couleurombre: "grisombre", theme: []),
    Matiere(nom: "Éducation civique", abrev: "EMC", image: "emc", couleur: "beige", couleurombre: "beigeombre", theme: [respect, republic, civic, ouimars]),
    Matiere(nom: "Musique", abrev: "Musique", image: "music", couleur: "jone", couleurombre: "joneombre", theme: []),
    Matiere(nom: "Art platiques", abrev: "Art", image: "art", couleur: "peche", couleurombre: "pecheombre", theme: []),
    ]

//var maths = Matiere(nom: "Mathématiques", abrev: "Maths", image: "maths", couleur: "rouge", couleurombre: "rougeombre", theme: [calcul, fraction, géométrie, espace, mesure, angle])
//var français = Matiere(nom: "Français", abrev: "Français", image: "français", couleur: "vert", couleurombre: "vertombre", theme: [])
//var anglais = Matiere(nom: "Anglais", abrev: "Anglais", image: "anglais", couleur: "jaune", couleurombre: "jauneombre", theme: [])
//var histoire = Matiere(nom: "Histoire", abrev: "Histoire", image: "histoire", couleur: "bleu", couleurombre: "bleuombre", theme: [orient, grèce, rome, femmes])
//var geo = Matiere(nom: "Géographie", abrev: "Géo", image: "géo", couleur: "rose", couleurombre: "roseombre", theme: [])
//var svt = Matiere(nom: "Sciences et Vie de la Terre", abrev: "SVT", image: "svt", couleur: "oronge", couleurombre: "orongeombre", theme: [])
//var pc = Matiere(nom: "Physique-Chimie", abrev: "PC", image: "pc", couleur: "marron", couleurombre: "marronombre", theme: [])
//var techno = Matiere(nom: "Technologie", abrev: "Techno", image: "techno", couleur: "gris", couleurombre: "grisombre", theme: [])
//var emc = Matiere(nom: "Enseignement moral et civique", abrev: "EMC", image: "emc", couleur: "beige", couleurombre: "beigeombre", theme: [])
//var musique = Matiere(nom: "Musique", abrev: "Musique", image: "music", couleur: "jone", couleurombre: "joneombre", theme: [])
//var art = Matiere(nom: "Art platiques", abrev: "Art", image: "art", couleur: "peche", couleurombre: "pecheombre", theme: [])

//LISTE DES THEMES PAR MATIERE

//MATH
var calcul = Theme(nom: "Calculs", image:"calcule", vidéo: "url calculs ici", leçon: "grand texte calculs ici ?", niveau: .sixième, question: [])
var fraction = Theme(nom: "Fractions", image: "fraction", vidéo: "url fractions ici", leçon: "grand texte fractions ici ?", niveau: .sixième, question: [])
var géométrie = Theme(nom: "Géométrie", image: "geo", vidéo: "url géométrie ici", leçon: "grand texte géométrie ici ?", niveau: .sixième, question: [])
var espace = Theme(nom: "Espaces", image: "espace", vidéo: "url espaces ici", leçon: "grand texte espaces ici ?", niveau: .sixième, question: [])
var mesure = Theme(nom: "Mesures", image: "mesure", vidéo: "url mesures ici", leçon: "grand texte mesures ici ?", niveau: .sixième, question: [])
var angle = Theme(nom: "Angles", image: "angle", vidéo: "url angles ici", leçon: "grand texte angles ici ?", niveau: .sixième, question: [])

//FR

//ANG

//HISTOIRE
var orient = Theme(nom: "Orient Ancient", image: "orient", vidéo: "url orient ici", leçon: "grand texte orient ici ?", niveau: .sixième, question: [])
var grèce = Theme(nom: "Grèce Antique", image: "grece", vidéo: "url grèce ici", leçon: "grand texte grèce ici ?", niveau: .sixième, question: [])
var rome = Theme(nom: "Rome", image: "rome", vidéo: "url rome ici", leçon: "grand texte rome ici ?", niveau: .sixième, question: [])
var femmes = Theme(nom: "Femmes Marquantes", image: "cleo", vidéo: "url femmes ici", leçon: "grand texte femmes ici ?", niveau: .sixième, question: [])

//GEO

//SVT

//PC

//TECHNO

//EMC
var respect = Theme(nom: "Le respect des autres", image: "respect", vidéo: "url", leçon: "blabla", niveau: .sixième, question: [])
var republic = Theme(nom: "Valeurs de la République", image: "republic", vidéo: "url", leçon: "blabla", niveau: .sixième, question: [])
var civic = Theme(nom: "Culture civique", image: "civic", vidéo: "url", leçon: "blabla", niveau: .sixième, question: [])
var ouimars = Theme(nom: "8 Mars", image: "ouimars", vidéo:"url", leçon:"blabla", niveau: .sixième, question: [])
 
//MUSIQUE

//ART




//var themesMaths = [
//    Theme(nom: "Calculs", image:"calculs", vidéo: "url calculs ici", leçon: "grand texte calculs ici ?", niveau: .sixième, question: []),
//    Theme(nom: "Fractions", image: "fractions", vidéo: "url fractions ici", leçon: "grand texte fractions ici ?", niveau: .sixième, question: []),
//    Theme(nom: "Géométrie", image: "géométrie", vidéo: "url géométrie ici", leçon: "grand texte géométrie ici ?", niveau: .sixième, question: []),
//    Theme(nom: "Espaces", image: "espaces", vidéo: "url espaces ici", leçon: "grand texte espaces ici ?", niveau: .sixième, question: []),
//    Theme(nom: "Mesures", image: "mesures", vidéo: "url mesures ici", leçon: "grand texte mesures ici ?", niveau: .sixième, question: []),
//    Theme(nom: "Angles", image: "angles", vidéo: "url angles ici", leçon: "grand texte angles ici ?", niveau: .sixième, question: []),
//]
