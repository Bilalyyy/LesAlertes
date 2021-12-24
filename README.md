# Les Alerte VS ActionSheet

Je place deux boutons en bas de l'écran, le premier déclanche une UIAlerte de style: .alert.
Cette .alert comportera elle même trois boutons:
  1. "Jaune" pour modifier la couleur du background en jaune.
  2. "Destruction Style". Qui n'a pas d'action particulieré, mais affiche un style: .destructive.
  3. "Cancel" avec le style .cancel

Le second bouton du bas de l'écran déclanche une .actionSheet.
Cette .actionSheet comporte elle même plusieurs boutons qui permetent de changer la couleur du background.
Cette .actionSheet possède également un bouton "Reglage par defaut" de style .destructive qui apparait uniquement lorsque la couleur du background a été modifié.

Enfin, en haut à droite de l'écran un dernier bouton permet d'afficher une troisième UIAlerte de style .alert mais avec cette foi un TextField qui permet de modifier le text du label placé au centre de l'écran.
