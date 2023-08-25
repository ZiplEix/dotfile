# Dotfiles de ZiplEix

Ce dépôt contient mes dotfiles personnels et est conçu pour automatiser la configuration de mon environnement de travail. Il utilise [Dotbot](https://github.com/anishathalye/dotbot) pour l'installation et la gestion.

## Table des Matières

- [Fonctionnalités](#fonctionnalités)
- [Compatibilité](#compatibilité)
- [Installation](#installation)
- [Mise à jour et gestion](#mise-à-jour-et-gestion)
  - [Homebrew et Brewfile](#homebrew-et-brewfile)
  - [Paquets NPM globaux](#paquets-npm-globaux)
  - [Engagements et mises à jour du dépôt](#engagements-et-mises-à-jour-du-dépôt)
- [Ajouter un nouveau Dotfile](#ajouter-un-nouveau-dotfile)
- [Contenu](#contenu)
- [Personnalisation](#personnalisation)
  - [Dotfiles](#dotfiles)
  - [Scripts de Configuration](#scripts-de-configuration-setup_*.zsh)
  - [Dotbot](#dotbot)
  - [Ajout de nouvelles fonctionnalités](#ajout-de-nouvelles-fonctionnalités)
  - [Mise à jour du Brewfile](#mise-à-jour-du-brewfile)
  - [Commit et Push](#commit-et-push)
- [Contributions](#contributions)

## Fonctionnalités

- Configuration automatisée avec une seule commande
- Installation des outils de ligne de commande via Homebrew
- Configuration de ZSH avec Oh My Zsh
- Configuration de Git
- Alias et fonctions personnalisés
- Et bien plus encore!

## Compatibilité

- MacOS
- Linux (Ubuntu, Debian, Arch, etc.)
- Windows (WSL2)

## Installation

**⚠️ Attention : Cette commande supprimera et remplacera les configurations existantes pour les outils pris en charge. Faites une sauvegarde avant d'exécuter ces commandes.**

> **Remarque** : Si vous êtes sur MacOS et que vous n'avez pas encore installé Xcode, vous pouvez le faire en exécutant la commande suivante : `xcode-select --install`.

> **remarque** : le seul prérequis necessaire à l'installation de la configuration est `git` afin de pouvoir cloner de répo.

```bash
git clone https://github.com/ZiplEix/dotfile.git .dotfiles
cd .dotfiles
./install
```

## Mise à jour et gestion

### Homebrew et `Brewfile`

- Exécutez régulièrement la commande bbd (alias pour `brew bundle dump --force --describe`) pour mettre à jour votre Brewfile.
- Notez que seuls les paquets installés via Homebrew seront enregistrés et installés automatiquement.

### Paquets NPM globaux

- Pour sauvegarder les paquets installés globalement via `npm i -g`, ajoutez-les manuellement au fichier [`setup_node.zsh`](https://github.com/ZiplEix/dotfile/blob/main/setup_node.zsh).
- Vous pouvez lister les paquets NPM installés globalement avec la commande : `npm list --global --depth=0.`

### Engagements et mises à jour du dépôt

- Pensez à faire des commits et des pushs réguliers pour que le dépôt soit le plus à jour possible.

## Ajouter un nouveau Dotfile

Si vous souhaitez ajouter un nouveau fichier de configuration (dotfile) à ce projet, voici les étapes à suivre :

1. **Ajoutez le Dotfile dans le Répertoire :**
    - Placez votre nouveau dotfile (par exemple, `.nouveaudotfile`) dans le répertoire `~/.dotfiles`.
    - Si le nouveau dotfile à été créé par un programme vous pouvez faire la commande suivante : `mv ~/.nouveaudotfile ~/.dotfiles/.nouveaudotfile`.
2. **Modifiez install.conf.yaml :**
    - Ouvrez le fichier install.conf.yaml et ajoutez une nouvelle directive pour créer un lien symbolique entre votre nouveau dotfile et l'emplacement où il doit être installé. Par exemple :

    ```yaml
    - link:
        ~/.nouveaudotfile: ~/.dotfiles/.nouveaudotfile
    ```

3. **Ajoutez un Script d'Installation (optionnel) :**
    - Si votre dotfile nécessite des étapes d'installation supplémentaires, vous pouvez créer un nouveau script setup_*.zsh et ajouter une référence à ce script dans install.conf.yaml. Par exemple :

    ```yaml
    - shell:
        - ~/.dotfiles/setup_nouveaudotfile.zsh
    ```

4. **Testez l'Installation :**
    - Exécutez `./install` pour tester votre nouvelle configuration.
    - Si vous avez ajouté un script d'installation, vous pouvez l'exécuter séparément pour tester les étapes d'installation.

5. **Commit et Push :**
    - Une fois que vous êtes satisfait de votre nouvelle configuration, n'oubliez pas de faire un commit et un push pour que les modifications soient prises en compte la prochaine fois que vous exécuterez `./install`.

## Contenu

- `install.conf.yaml` : Fichier de configuration pour Dotbot.
- `setup_*.zsh` : Scripts d'installation pour divers outils.
- `.zshrc`, `.zshenv`, `.gitconfig` : Fichiers de configuration.
- `dotbot/` : Sous-module Dotbot. C'est un sous-module git, donc il est cloné avec le dépôt. Il n'est pas nécessaire de le cloner séparément. Il ne doit pas être modifié.

## Personnalisation

Si vous souhaitez personnaliser ce dépôt pour l'adapter à vos besoins, voici quelques conseils.

### Dotfiles

- `ZSH`: Vous pouvez ajouter vos propres alias et fonctions dans `.zshrc` ou `.zshenv`.
- `Git`: Pour personnaliser la configuration de Git, éditez le fichier `.gitconfig`.

### Scripts de Configuration (setup_*.zsh)

- `Homebrew`: Ajoutez ou supprimez des paquets dans `Brewfile` pour personnaliser les outils qui seront installés.
- `NPM`: Pour ajouter des paquets NPM globaux, ajoutez la commande d'installation correspondante dans [`setup_node.zsh`](https://github.com/ZiplEix/dotfile/blob/main/setup_node.zsh).

### Dotbot

- Le fichier `install.conf.yaml` contient les directives que Dotbot suit pour créer des liens symboliques pour les fichiers de configuration. Modifiez ce fichier si vous ajoutez ou retirez des dotfiles.

### Ajout de nouvelles fonctionnalités

Si vous souhaitez ajouter de nouvelles fonctionnalités, vous pouvez créer un nouveau script de configuration `setup_[nom].zsh` et l'ajouter dans `install.conf.yaml` sous la section `- shell:`.

### Mise à jour du `Brewfile`

N'oubliez pas de faire régulièrement la commande `bbd` pour mettre à jour votre Brewfile.

### Commit et Push

Une fois que vous avez personnalisé ce projet selon vos besoins, n'oubliez pas de faire un commit et un push pour que les modifications soient prises en compte la prochaine fois que vous exécuterez `./install`.

## Contributions

Si vous avez des suggestions, des questions ou des corrections, n'hésitez pas à ouvrir une issue ou une pull request.
