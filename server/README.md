# Backend Server
Tech Stack: SQLite Database with Python Flask API


## Setup

The goal is to load both csv files (`offers.csv` and `hotels.csv`) via the terminal into the SQLite Database

### Data Splitting
But first, we need to split the `offers.csv` file because it would just take to long to parse the 72 million rows. Splitting the original file after every each one million-th line, we get 72 new files with one million rows/lines each
1. split the csv file every one million-th line
    ```
    $ split -l 1000000 -d offers.csv offers_
    ```
2. change the filename of these splitted files to csv
    ```
    $ for i in $(find offers_*); do mv $i "$i.csv"; done
    ```
=> we will use the file `offers_00.csv` because it contains the header and we will need that in the next steps

### Data Loading
run these commands in a terminal in the root folder:

1. create a new database for this project and go into the sqlite3 terminal mode
    ```
    $ sqlite3 db.sqlite3
    ```
2. set the input mode to csv
    ```
    $ .mode csv
    ```
3. import the hotels csv file data to sqlite3 (this can take some seconds ...)
    ```
    $ .import offers_00.csv offers
    
    $ .import hotels.csv hotels
    ```
4. verify the tables got created correctly => should return "hotels" and "offers"
    ```
    $ .tables
    ```
5. check that the whole data got loaded
    ```
    # should return 999_999
    $ SELECT COUNT (*) FROM offers;

    # should return about 2000
    $ SELECT COUNT (*) FROM hotels;
    ```
=> if all is correct, then the database is set up!

## Project Structure
- python files are in the `lib` folder
- core functionality: `app.py`
- util functions: `utils.py` => help to create a JSON object that should be returned in some GET requests

## Start the Server
start the server with 
```
$ python3 -m flask run
```

---
### Side Note
As visible in the git commit history, I chose a Google Firestore Database first, with the idea to speed the development process up. 
But in the end it was exactly that what slowed me down.

After some time, I eventually discovered that two inequality operations in the WHERE clause on different columns aren't allowed/possible at the same time with Google Firetore. Since this is needed for the search query to fetch the selected time range (`departuredate` and `returndate`), I had to try something else.

Furthermore, in-place calculations in the WHERE clause are not possible as well (something like `WHERE returndate - departuredate = duration`)
To solve this problem, I might have had to set up a Google Cloud Function to pre-calculate that result and store it in an additional column.

After some time wondering what to do next, I tried the lightweight database SQLite which was setup extremely fast, compared to the time I spend with configuring Google Firestore.
