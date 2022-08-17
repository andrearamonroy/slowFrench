# slowFrench

The Slow French Podcast App, is a language learning app, with three different levels: 1. Débutant, 2. Intermédiare, and 3. Avance. Each level contains unique units with different podcast topics, as you progress on the levels the podcast topics are more advance. 

Welcome Screen
![Simulator Screen Shot - iPhone 13 Pro - 2022-08-17 at 12 38 58](https://user-images.githubusercontent.com/54419381/185195472-bb22217a-7117-4fbe-9690-6ca54b827e51.png)

<img scr="https://user-images.githubusercontent.com/54419381/185195472-bb22217a-7117-4fbe-9690-6ca54b827e51.png" width=200 height=400>

Levels
![Simulator Screen Shot - iPhone 13 Pro - 2022-08-17 at 12 44 26](https://user-images.githubusercontent.com/54419381/185196227-49e17a1a-598d-4412-b75a-2b241d11dfb6.png)

Units according to the level selected
![Simulator Screen Shot - iPhone 13 Pro - 2022-08-17 at 12 45 02](https://user-images.githubusercontent.com/54419381/185196378-49af333c-c2d2-4045-9f39-473d69dc3c80.png)

Podcast in the unit selected
![Simulator Screen Shot - iPhone 13 Pro - 2022-08-17 at 12 45 37](https://user-images.githubusercontent.com/54419381/185196473-02800d81-c1f6-4ec9-8993-ea6b86e9694c.png)

Detailed View of the Podcast
![Simulator Screen Shot - iPhone 13 Pro - 2022-08-17 at 12 46 17](https://user-images.githubusercontent.com/54419381/185196575-ca887f06-0b3e-4076-acc2-acf23df07351.png)


## Implementation

The application gets the level-unit-podcast hierarchy from a local .json file, that I created to meet the needs of this app. Another approach instead of having a local .json file would had been an API call, however, I wanted the app to look as close as possible to the website version of this app, https://www.podcastfrancaisfacile.com/dialogue-debutant-francais. The Podcast francais facile was the inspiration for this app, and since they don't provide any Web API endpoints to return .json I implemented my own.

<img width="1211" alt="Screen Shot 2022-08-17 at 12 57 38 PM" src="https://user-images.githubusercontent.com/54419381/185199388-87e49562-e3f1-4af1-a982-483994a92718.png">

Also the mp3 file is downloaded from the website and stored locally, in order to implement functions in the AVKit framework. 

The podcasts utulizes the playPause, stop, and toggleLoop functions. The user is also able to foward the audio by 10 secs and go back by 10 secs. 

In this project I worked with parsing .json and managing auido. Nevertheless, it will be upgraded to use a database instead of storing files locally. 
