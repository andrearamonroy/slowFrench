# Slow French Podcast

The Slow French Podcast App, is a language learning app, with three different levels: 1. Débutant, 2. Intermédiare, and 3. Avance. Each level contains unique units with different podcast topics, as you progress on the levels the podcast topics are more advance. 

<img width="1770" alt="slowFrench" src="https://user-images.githubusercontent.com/54419381/185433922-867dd79b-00f7-43de-8e51-1ad7f3e88b2f.png">



## Implementation

The application gets the level-unit-podcast hierarchy from a local .json file, that I created to meet the needs of this app. Another approach instead of having a local .json file would had been an API call, however, I wanted the app to look as close as possible to the website version of this app, https://www.podcastfrancaisfacile.com/dialogue-debutant-francais. The Podcast francais facile was the inspiration for this app, and since they don't provide any Web API endpoints to return .json I implemented my own.

<img width="1211" alt="Screen Shot 2022-08-17 at 12 57 38 PM" src="https://user-images.githubusercontent.com/54419381/185199388-87e49562-e3f1-4af1-a982-483994a92718.png">

Also the mp3 file is downloaded from the website and stored locally, in order to implement functions in the AVKit framework. 

The podcasts implements the playPause, stop, and toggleLoop functions. The user is also able to foward the audio by 10 secs and go back by 10 secs. 

In this project I worked with parsing .json and managing auido. Nevertheless, it will be upgraded to use a database instead of storing files locally. 
