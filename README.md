![InstaVid](https://i.imgur.com/C271WhY.png)

InstaVid is a web-application that works together with the popular application [Vine](https://vine.co/). The idea behind it is having a website where you can post, store and edit all your favorite vines and easily access them.
In order to have full access to all the functionalities on InstaVid, any user needs to create an account and be signed in. This will allow them to upload vines (short videos of max. 6 seconds), see what other users have uploaded and comment on any Vine they like. Users can chose between looking at an overview of all uploaded Vines or display a single Vine at a time.   

                                

![Overview](https://i.imgur.com/jto8jHI.jpg) 
 
 
##Technologies Used

In order to build and deploy this web-application I used the following technologies and services:

- Ruby
- Rails
- CRUD
- REST
- Paperclip
- ImageMagick
- .env
- Amazon S3
- Heroku
- HTML5
- CSS
- SASS
- Bootstrap

##Design

###Wireframes 
![Wireframes](https://i.imgur.com/YcFn8fq.png)
###ERDs
![ERDs](https://i.imgur.com/ny4mH9G.png)


I wanted this web-application to have a simple but clean look, similar to the designs of [Vine](https://vine.co/) or [Instagram](https://www.instagram.com/). In order to ensure a pleasant user experience, on the main page there are 3 columns with all the uploaded vines, including a title and other suplementary infromation. Furthermore any signed in user can access an overview of all the vines they have posted (in this case they are displayed in 4 colums), as well as display a single vine.    
Only two fonts were used for this web-application; _cool_ for the logo and _fabada_ for the rest of the text. Most of the formatting is done with help of bootstrap.   
The home page shows a vine-compilation in full screen and autoplay mode. 

![Homepage](https://i.imgur.com/0pC6t6J.jpg)

## Installation instructions
You will need to go through the following steps in order to install this web-application on your device (requires Rails 4):

- You can [**fork and clone**](https://help.github.com/articles/fork-a-repo/) my repository

- **Paperclip**:
For uploading files (images) I used paperclip. First of all you will need to install **ImageMagick**. You can find instructions on how to do this and implement Paperclip in your web-app [here](https://github.com/thoughtbot/paperclip). 

- **Amazon S3**: Amazon S3 (Simple Storage Service) is an online file storage web service (could storage), which you will need in order to upload files using paperclip once your web-app has been deployed on Heroku. You can find more information about Amazon S3 [here](https://aws.amazon.com/s3/) and create a free account [here](http://docs.aws.amazon.com/AmazonS3/latest/gsg/SigningUpforS3.html). Be aware that only a limited capacity of files can be uploaded free of charge. Any uploaded file will be visible in your buckets in your Amazon S3 account.
You will find a link to your security credentials in the drop down menu that opens up when you click on your name in your profile.  
[This](https://devcenter.heroku.com/articles/s3) is another helpful link that explains how to use Amazon S3 to upload files on Heroku. 

- **dotenv**:
In order to make your `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` invisible to others once you push your web-app to a repository, you will want to follow these instructions on [dotenv](https://github.com/bkeepers/dotenv).

- **Deploying on Heroku**:
Create an account on Heroku and download the Heroku Toolbelt.
If you already created your app, follow [this guide](https://devcenter.heroku.com/articles/rails4) on deploying Rails 4 on Heroku. In case the app is not yet created, [here](https://devcenter.heroku.com/articles/getting-started-with-rails4) is some more detailed information on getting started on Heroku. 


##Planned features

These are the features I would like to implement in InstaVid:

- A show for user profiles, including a profile picture.
- The possibility to upload vines directly from any device, with or without the help of Vine.co.
- The option to "like" vines and comments.
- A feature that allows following other users.
- A search function for vines.

All my user stories can be found under this [Trello link](https://trello.com/b/ghQIs91q/instavid).
