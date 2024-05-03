# MOBILE AUTOMATION TESTING - ROBOT FRAMEWORK

System Under Test:
1. Mobile

Features:
1. Robot Framework

## Prerequisites
* [Python](https://www.python.org/downloads/)
* [Robot Framework](https://robotframework.org/?tab=1#getting-started)
* [Visual Studio Code](https://code.visualstudio.com/)

## Getting started
1. Clone the repository
2. Open Terminal and change directory to the repo
3. Create python virtual environment
    > python -m venv .venv
4. Add these environment variable in the end of script .venv/bin/activate file

   > export gorest='https://gorest.co.in/public'
   
   > export web_url_id='https://flip.id/id/landing'

   > export web_url_en='https://flip.id/en/landing'

   > export web_url='https://flip.id'
   
6. Type `source .venv/bin/activate` on your terminal
7. install all library
    > pip install -r requirements.txt

## Visual Studio Code Extension
### 
Add Robot Framework Language Server:

* Open `Extension`
* Go to `Extension > Marketplace`
* Search for `Robot Framework Language Server` and Install

## Running the Test

* To execute All Test cases
  > robot tests
* To execute All API Test cases
  > robot tests/api
* To execute All Website Test cases
  > robot tests/web
* To execute Specific Folder
  > robot tests/folder_name
* To execute by Tags
  > robot -i ${TAGS} tests

## Report
* Find the reporting file on `report.html`
* Open the reporting file in browser

## Sample Result



## Documentations
* https://robotframework.org/?tab=1#getting-started
* https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
