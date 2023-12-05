# Vodafone:RobotFramework-Automation-Task
 [**Robot Framework**](https://robotframework.org/) using [**Browser Library**](https://marketsquare.github.io/robotframework-browser/Browser.html) for **Web GUI** Test Automation and [**Requests library**](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html) for **APIs** Test Automation.

## **Automation Framework Design**:
We are implementing the **Object Model** design pattern (**Page Object Model** for GUI). And below is the project structure folders:
* **Object Models** folder: Includes the **APIs** clustered by the services and **GUI Pages** 
* **Tests** folder: Includes all of our **Test Suites** and **Test Cases** 
* **Resources** folder: Includes any other files that aren't keywords/code/actions like **Global Variables**, **Configurations**, etc...


## Setup:
1. Install [**Python™**](https://www.python.org/downloads/)
2. Install [**Node.js®**](https://nodejs.org/en/download/)
3. Open a terminal/commandline windows and **Install Robot Framework** from PyPi with pip: ```pip install robotframework```
4. Install [**Browser Library**](https://marketsquare.github.io/robotframework-browser/Browser.html): ```pip install robotframework-browser``` then initialize it: ```rfbrowser init```. If rfbrowser is not found/installed for any reason, try ```python -m Browser.entry init``` 
5. Install [**Requests library**](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html): ```pip install robotframework-requests```
6. Install [**JSON Library**](https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html): ```pip install robotframework-jsonlibrary```
7. Install [**Pabot**](https://pabot.org/) to be able to perform **Parallel execution** when needed: ```pip install -U robotframework-pabot```
8. Install [**Allure Report**](https://pypi.org/project/allure-robotframework/) to be able to generate **Allure Report** ``` pip install allure-robotframework ```
9. Install [**Allure Report Compile**](https://pypi.org/project/allure-robotframework/) to be able to compile into one source **Allure Report html** ``` pip install allure-combine ```

## Create a Virtual Environment:
1. Navigate to Automation Framework Task Directory
2. Open CMD and python -m venv automation-task
3. Activate a virtual environment in power shell mode .\myenv\Scripts\Activate
 
## Execution:
* Navigate to E-Shop project directory  ```robot -d results tests/eshop.robot```
* Navigate to Reqres project directory  ```robot -d results tests/Reqres.robot```
* We can perform **Parallel Execution** with the ```pabot``` instead of ```robot``` command like this: ``` pabot  --testlevelsplit --listener allure_robotframework tests/eshop.robot```
* we can perform **Allure Listeners** to generate report ```robot  --listener allure_robotframework tests/eshop```
    * Generate allure-results ``` allure generate allure-results```
    * Compile all generated file to one source html ``` allure-combine . ```
