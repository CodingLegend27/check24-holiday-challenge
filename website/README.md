# Website as the Client Side Application
Tech Stack: Flutter Web Application with MVVM and repositories architecture

## Project Structure
- `domain/`: handles all the data, mainly coming from the server
- `routes/`: handles the routing of the app
- `ui/`: contains all files that structure the user interface of the app
- `util/`: some additional helper functions

### Data Handling (`domain`-folder)
- models are the general structure of recieved data
    - hotel model => models the data of a row of `hotel.csv`
    - offer model => models the data of a row of `offers.csv`
    - models are implemented with the `freezed` package to have auto-generated more functionality such as automatic JSON-parsing and equality operations of two objects; implemented with the `@freezed` annotation
    - additionally some `@JsonKey` annotations are added to map the attributes of a object to a different naming/key in the JSON-key-value object that will be received by the server
- repositories are handling / storing the data received from the server
    - search repository has all the functionality to search for offers
    - since there are no more functionalities, this is the only repository
    - it uses the API (in the `service` folder) to fetch data from the server and models it as either a `Hotel` or an `Offer`
    - in `search.repository.dart` the `SearchParameters` are modeled as a sealed union with `freezed`; this way, all attributes of the search can be stored in a single object and don't need to re-mapped while transferring them from the UI via the ViewModel and Repository to the API
- the `service` folder contains the api and the Injection of all services
    - `api.dart` is simple a API implemented with the `http` package to support both `GET` and `POST` requests
    - `service_injection.dart` uses the `GetIt` package to register both the `Api` and the `AppRouter` (which will be explained later on)
        - this way, those services will be initialized at the start of the application
        - they can later be accessed globally with e.g. `getIt<Api>()`
- in the `routes` folder the routing of the application gets defined
    - the `auto_route` package will be used to generate the routing for all pages
    - since we just have the MainScreen as a route right now, the structure is rather simple
- in the `ui` we have just one folder: `screens`
    - `screens` contains just one screen, namely `search`
        - we have different files for the elements showed in the search screen
        - for every screen we have one viewmodel which uses BLoC to update the UI with a new state if needed
    - normally, we would have an additional `widgets` folder here; since the UI is not so complex and custom widgets with themes are not implement, we don't need this folder
- `util` contains helper functions to 
    - format a date to a string in a custom way
    - log debug statements and errors
    - some more functions to convert a String to an Integer, DateTime, or Bool if needed
- both `firebase_options.dart` and `generated_plugin_registrant.dart` are auto-generated, so they won't be further explained
- `main.dart` is the entry point of the app and starts the `serviceInjection` and the application itself (contained in `main.screen.dart`)
- `main.screen.dart` contains the UI entry point of the app (`MaterialApp`) and returns the `SearchScreen` as the `body`


## Start of the Application
- execute the following command
```
$ flutter run -d chrome
```

## Side Note
### Rebuilding of the Auto-Generated Files
to rebuild the auto-generated files, such as by the `freezed` or the `auto_route` package, execute:
```
$ flutter pub run build_runner build --delete-conflicting-outputs
```