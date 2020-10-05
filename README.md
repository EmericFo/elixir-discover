# Quick word on Elixir
 - Sur la VM BEAM d'Erlang (1987)
 - distribué, communication réseau natif
 - Concurrent, fonctionnel et immutable
 - tolerant au crash

# Installation
https://elixir-lang.org/install.html

# IDE
- vi  :)
- atom avec le package language-elixir + package script  + package  platformio-ide-terminal
- plein d'autres

# Premières commandes, let's play
Dans une console, lancer la commande 'iex'  
Puis essayer chaque ligne du fichier 'firstCommands.exs' depuis l'interpréteur iex  

# Observons un module
Ouvrir MapExample.exs
le lancer depuis un terminal avec la command 'elixir MapExample.exs'

depuis iex c'est possible aussi  
c("mapExample.exs") # compile  
MapExample.callAll()

loopOver.exs

# Recursion et pattern Matching
exécuter le code 'hello_world_pattern_matching.exs'  
Comparer avec le code 'hello_world_case.exs'

# Mix and deps
module disponible en Elixir et en Erlang : https://hex.pm/   
Taper mix new mon_premier_projet  
'mix test'  
regardons de plus près  
doctest  

# Process and messages
regardons le fichier 'process.exs' et essayons les commandes  


# Reste à parler de
Meta programming:	modifie le langage. aka macro  
Superviseur  
OTP et Gen server : gestion de la concurrence  
Gen stage : fil d’attente  
Phenix : framework web  
Distillery : outil de build and release
