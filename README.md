# CRUDTest

## Overview

A Simple CRUD IOS App Project. This Project builds using MVC architectural patterns.

## Usage

Just Clone the Project and Run.

## Structure App

- App
 - Application
 - Modules
 - Services
 - Utils
 - Resources
 
### Aplication

Application contains App level File such as AppDelegate and SceneDelegate

### Modules

Modules contain features / pages for the app. Each module has MVC Pattern. for example:
  - Doctor List
    - Model (Doctor)
    - View (DoctorList.storyboard, DoctorCell)
    - Controller (DoctorListViewController)
    
### Services

Services contain A bunch of services that implemented in this project, such as API Handler / Network Manager.

### Utils

Utils contain some functions that will use accross the project.

### Resources

Resources contain assets, constants, strings, etc.
