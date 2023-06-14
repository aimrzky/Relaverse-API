# Relaverse API - Cloud Computing

## Bangkit Capstone Project 2023
Bangkit Capstone Team ID : C23-PS235 <br>
Here is our repository for Bangkit 2023 Capstone project - Cloud Computing

## API Description
Relaverse API is an application that serves as the back-end of the system, designed using Node.js and Express for API creation and using Bcrypt for user authentication security. In order to verify user access, we utilize JWT (JSON Web Token) to provide a secure and efficient method. Another important part of the application is TensorFlow.js, which enables the execution of machine learning and predictive models directly in a JavaScript environment. In addition, we use Cloud Storage Bucket to store images integrated with our Cloud SQL database, ensuring effective and flexible data management. The entire application is hosted on Google App Engine, which ensures optimal scalability, reliability and speed for our high-performance applications.
<br>

## The Team

|              Name              | Bangkit-ID |   Learning Path    |                                                       Contact Link                                                       |
| :----------------------------: | :--------: | :----------------: | :----------------------------------------------------------------------------------------------------------------------: |
| Jason Suhali | M264DSX1746 |  Machine Learning  |            [LinkedIn](https://www.linkedin.com/in/jason-suhali-604814222/)  and [GitHub](https://github.com/JasonXander)         |
|   Ngakan Putu Widyasprana     | M368DSX3659 |  Machine Learning  |                [LinkedIn](https://www.linkedin.com/in/ngakanwp/)    and [GitHub](https://github.com/NgakanWidyasprana)            |
|     Kristian Ekachandra            | A264DSX2268| Mobile Development |              [LinkedIn](https://www.linkedin.com/in/kristian-ekachandra/)       and [GitHub](https://github.com/KristianEka)        |
|     Mohammad Faiz Azhary     | A363DSX1260 | Mobile Development |    [LinkedIn](https://www.linkedin.com/in/mohammad-faiz-azhary/)  and [GitHub](https://github.com/zee-azha)    |
|      Muhammad Aimar Rizki Utama     |C360DSX0650 |  Cloud Computing   | [LinkedIn](https://www.linkedin.com/in/muhammad-aimar-rizki-utama-75479b21b/) and [GitHub](https://github.com/aimrzky)   |
|        Fakhrity Hikmawan         | C360DSX1665 |  Cloud Computing   |        [LinkedIn](https://www.linkedin.com/in/fakhrity-hikmawan/)   and [GitHub](https://github.com/fahixa)     |

## Repository

|   Learning Paths   |                                Link                                |
| :----------------: | :----------------------------------------------------------------: |
| Mobile Development | [Github](https://github.com/zee-azha/Relaverse) |
| Cloud Computing  | [Github](https://github.com/aimrzky/Relaverse-CC)  |
| Machine Learning  | [Github](https://github.com/NgakanWidyasprana/RelaVerse-ML/tree/main)  |

## Cloud Architecture Relaverse
![Cloud Architecture Relaverse](https://storage.googleapis.com/relaverse/CC-Diagram.png)

## Cloud Development Timeline
|  Task  |           Week 1             |            Week 2             |            Week 3             |           Week 4          |
| :----: | :--------------------------: | :---------------------------: | :---------------------------: |:------------------------: |
| Task 1 | Design Database              | Create Cloud SQL Database     | Implementation ML to CC       | Testing API with Postman  |
| Task 2 | Create API Register & Login  | Create Cloud Storage Bucket   | Create Machine Learning API   | Deploy API to App Engine  |
| Task 3 |       -                      | Create API Campaign           | Create API Documentation      |             -             |

## API URL & DOCUMENTATION
[RELAVERSE API URL & DOCUMENTATION](https://relaverse-api-dot-bangkit-386813.et.r.appspot.com/)

## How this API runs on Google Cloud Platform:
1. Create Cloud Storage Bucket -> Export key.json -> Add key.json to keys directory
2. Create Cloud SQL Instance (MySQL) -> Import db_relaverse.sql
3. Create App Engine -> Deploy

## Deploy Relaverse to App Engine
1. Create App Engine on Google Cloud Platform
2. Clone this Repository ```git clone https://github.com/aimrzky/Relaverse-CC.git```
3. Edit file db.js on config directory (customize with the previously created database)
4. Install the required dependencies by running the command
   * ```npm install``` 
5. Run the ```gcloud init``` command to initialize, configure, or authenticate the Google Cloud SDK client
6. Finally, run the ```gcloud app deploy``` command to start deploying the API to the server.