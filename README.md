# Les .lerte VS .actionSheet

Je place deux boutons en bas de l'écran, le premier déclenche une UIAlerte de style: .alert.
Cette .alert comportera elle-même trois boutons:
 1. "Jaune" pour modifier la couleur du background en jaune.
 2. "Destruction Style" il n'y a pas d'action particulière, il affiche simplement un style: .destructive.
 3. "Cancel" avec le style .cancel...

Le second bouton du bas de l'écran déclenche une .actionSheet.
Cette .actionSheet comporte elle-même plusieurs boutons qui permettent de changer la couleur du background.
Cette .actionSheet possède également un bouton "Réglage par défaut" de style .destructive qui apparait uniquement lorsque la couleur du background a été modifié.

Enfin, en haut à droite de l'écran un dernier bouton permet d'afficher une troisième UIAlerte de style .alert mais avec en plus un TextField qui permet de modifier le text du label placé au centre de l'écran.

Simple projet de démo où j'utilise les différentes possibilités de présenter une UIAlerte à l'utilisateur. J'ai tout de même ajouté une petite animation pour la modification du background afin de rendre le tout un peu plus agréable.
