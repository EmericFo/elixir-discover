# Quick word on Elixir
 - Sur la VM BEAM d'Erlang (1987)
 - distribué, communication réseau natif
 - Concurrent, fonctionnel et immutable
 - tolérant aux crash

# Installation
https://elixir-lang.org/install.html

# IDE
- vi  :)
- atom avec le package language-elixir + package script
- plein d'autres

# First commands, let's play
Dans une console, lancer la commande 'iex'  
Puis essayer chaque ligne du fichier 'firstCommands.exs' depuis l'interpréteur iex  

# Module observation
Ouvrir MapExample.exs
le lancer depuis un terminal avec la commande 'elixir MapExample.exs'

depuis iex c'est possible aussi  
c("mapExample.exs") # compile  
MapExample.callAll()


# Recursion and pattern Matching
exécutez le code 'hello_world_pattern_matching.exs'  
Comparez avec le code 'hello_world_case.exs'  
Vous pouvez aussi regarder et jouer avec le module : loopOver.exs  

# Mix and doctest
module disponible en Elixir et en Erlang : https://hex.pm/   
Tapez 'mix new mon_premier_projet'  
'mix test'  
regardons de plus près  
doctest, c'est quoi ?  

# Process and messages
regardons le fichier 'process.exs' et essayons les commandes  
Jouez avec les process, depuis iex :
- taper la commande c("chartreuse_shop.exs")
- taper la commande  c("chartreuse_shop_customer.exs")
- créer un shop : myShop = Chartreuse_shop.open
- créer un client : jéjé = Chartreuse_shop_customer.new_customer
- observer le nom de la méthode suivante : Process.alive? jéjé
- observer le résultat de la commande : send myShop, {:order, {"verte", 3}, jéjé}
- send myShop, {:alcool, "Verte", jéjé}
- send myShop, {:alcool, "jaune", jéjé}  
- Process.exit(jéjé, :halt)
- Process.exit(myShop, :halt)

# remains to talk about
Meta programming:	modifie le langage. aka macro  
Superviseur  
OTP et Gen server : gestion de la concurrence  
Gen stage : fil d’attente  
Phenix : framework web  
Distillery : outil de build and release
