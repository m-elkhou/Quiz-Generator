# Générateur de Quizz
 Le but de ce projet est la création d'un générateur de questionnaires de type quizz (réponse unique / réponses multiples) et de textes à trous en JEE

Ce projet comporte deux parties
distinctes :
- une interface permettant d'insérer dans la base de données des questions ou des textes
à trous
- une interface permettant de tester le quizz ou les textes à trous.
Il faut prévoir, dans un premier temps, une page d'authentification (administrateur ou
utilisateur).

Pour la partie administration, il faut offrir la possibilité d'ajouter soit une nouvelle série de
questions soit un nouveau texte à trous. Une manière simple d'insérer ces informations dans la
base de données est de travailler avec un fichier texte (qu'il faudra uploader) :

• pour le questionnaire à choix multiples, le format de fichier est le suivant :
- la première ligne indique le thème du questionnaire
- les autres lignes suivent la syntaxe Quel est le nom du président du gouvernement
actuel ?|El Fassi,Ben Kiran,Chabat|2
- chaque paramètre (question, choix, réponses) est séparé par le pipe (|)

• pour le texte à trous, le format de fichier est le suivant :
- la première ligne indique le thème du texte
- les autres lignes constituent les paragraphes du texte à trous : Maître Corbeau, sur un
...... arbre perché,
- chaque mot à masquer est précédé de 6 points

• L'interface administrateur doit aussi permettre de configurer le quizz :
- temps autorisé pour répondre aux questions
- quizz à lancer par défaut (celui qui sera utilisé dans la partie utilisateur)
- nombre de questions à poser dans le cas d'une série de questions dans le cas d'un texte
à trous, un temps global doit être calculé en fonction du nombre de trous et du temps
autorisé.

Pour la partie utilisateur, il faut s'identifier pour commencer le quizz. Les questions sont
affichées les unes après les autres.
Pour chaque question, un chronomètre décompte le temps autorisé pour répondre à la
question. Une fois le quizz fini, le nombre de bonnes réponses de l'utilisateur s'affiche et le
résultat est enregistré dans la base de données.
***
### Links
- [E-mail](m.elkhou@hotmail.com)
- [Linkedin](https://www.linkedin.com/in/m-elkhou/)
- [GitHub](https://github.com/m-elkhou)<br/>
=> https://github.com/m-elkhou/Quiz-Generator.git
