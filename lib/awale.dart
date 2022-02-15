//import 'package:flutter/material.dart';
class Awale {
  List<int> plateau = List.generate(12, (index) => 4);
  int tour = 0;
  int score1 = 0;
  int score2 = 0;

  //Constructeur
  Awale();

  /*
   * Méthode qui permet de mettre un trou à jour avec une valeur de graine spécifique
   * @param trou correspond à la case du plateau (attention, le plateau commence à l'indice 0 !)
   * @param nbGraine prend bien souvent la valeur 0 ou plateau[trou]+1 comme parametre
   */
  void setGraine(int trou, int nbGraine) {}

  /*
   * Fonction qui renvoie le nombre de graine situées dans le trou
   * @param trou
   * @return
   */
  int getGraine(int trou) {}

//Methodes perso

  /*
   * Fonction qui permet de mettre les valeurs du jeu par default
   */
  void initJeu() {}

  /*
   * Fonction qui test si le jeu est fini ou non
   * @return
   */
  bool testFin() {}

  /*
   * fonction qui retourne la longueur du plateau
   */
  int getLongeur() {
    return plateau.length;
  }

  /*
   * Methode qui retourne le joueur actif. 1 pour le joueur 1, 0 pour le joueur 2
   * @return
   */
  int determineJoueur() {
    return tour % 2;
  }

  /*
   * Methode pour retourner le tableau en chaine de caractère. Ne sert qu'au débuggage
   * @return
   */
  @override
  String toString() {
    String afficheP = "";
    for (int i = 0; i < plateau.length; i++) {
      afficheP = afficheP + plateau[i].toString() + "|";
    }
    return afficheP;
  }

  /*
  * Méthode pour déplacer les graines d'un trou vers les autres
  * et test à la fin du déplacement le ramassage des graines
  * @param trou
  * @param activity
  */
  void deplacerGraine(int trou) {}

  /*
     * Methode qui retourne le nombre de graine d'un trou, et met l'état du trou à 0
     * @param trou
     * @return
     */
  int ramasserGraine(int trou) {}

  /*
     * Methode pour tester si on ramasse les graines ou non
     * La methode  met à jours les scores si ramassage
     */
  void testRammasage(int trou) {
    if ((getGraine(trou) == 2) || (getGraine(trou) == 3)) {
      if (determineJoueur() == 0) {
        score1 = score1 + getGraine(trou);
        setGraine(trou, 0);
        if (trou == 0) {
          testRammasage(11);
        } else {
          testRammasage(trou - 1);
        }
      } else {
        score2 = score2 + getGraine(trou);
        setGraine(trou, 0);
        if (trou == 0) {
          testRammasage(11);
        } else {
          testRammasage(trou - 1);
        }
      }
    }
    //msgFinJeu();
  }

  /*
  * Méthode qui affiche le toast en fin de partie
  * @param activity
  */
  String msgFinJeu() {
    String msg = "";
    if (testFin()) {
      if (score1 > score2) {
        msg = "Le joueur 1 à gagné.";
      } else {
        msg = "Le joueur 2 à gagné.";
      }
    }
    return msg;
  }
}
