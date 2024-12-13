#!/bin/bash

# Entrer les noms d'utilisateurs à créer
read -p " Veuillez entrez le nom de l'utilisateur à créer :" user

# vérifier la présence d'arguments.

if [ -z "$user" &>/dev/null; then

   echo "Il manque les noms d'utilisateurs en arguments. Fin du Script"
   exit 1
fi

# Création et vérification de l'utilisateur

if id "$user" &>/dev/null; then

    echo "L'utilisateur $user existe déja"
else
    sudo useradd "$user"

   if id "$user" &>/dev/null; then

      echo "L'utilisateur $user à été crée"

   else 
      echo "Erreur lors de la création de l'utilisateur $user"
   fi
 fi 
