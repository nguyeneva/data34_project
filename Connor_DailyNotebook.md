# Notebook
###### Connor Lee
1/14/2020
- Worked with Eva to determine which API to use
- Considered using a financial one, but decided to do pokemon since we were both interested in that, and we had just done a financial API in lab 2
 
1/24/2020
- Read through all project requirements and provided links
- Created project completion checklist on google drive
- Figured out how to interact with the API
- Wrote a function to run a get request for the api that allowed the user to pass in a shortened path for just what they want to pull
    - Decided that this would be useful as we need to call the funciton several times, also alowed for easy testing that the server was connected and checking that the data was exporting as expected
- Wrote a function to initialize the data frame (Eva and I worked on this together) I wrote the following functionality
    - Getting the list of generation 1 pokemon
        - Decided to start with just the generation 1 pokemon since that is all either of us remember, with the thought of potentially expanding if we have time and it isn't too difficult
        - Also decided to go with just generation 1 pokemon since the maximum number of pulls per minute is 100, so pulling all 807 pokemon would take over 8 minutes
    - Getting the species name, species URL for get requests, and index
    - Getting the species habitat and capture rate
    - Getting the species type
        - Decided to treat occurences of two types (like "grass, poison" as its own group rather than a subset of each group since this provides interesting information regarding the frequency of groups crossing over, as compared to when they don't)
    - Showing the functions progress
    - NOTE: We decided to store the pokemon in the dataframe as the pokeAPI code of conduct asked for the information to be locally cached so that the server wouldn't be bombarded with requests
- Wrote a function to summarise the habitat and type information
    - Decided to go with habitat and type information since it provides sufficient diversity to provide points of interest, but isn't so diverse that people would be overwhelmed by the data (ex. count of pokemon who can do each move would be hundreds of moves, and moves like tackle would be available to all of the pokemon)
- Updated the plotting code that Eva wrote to plot all of the summary info (4 plots total)
 
1/25/2020
- Researched packages that could be used for unit testing in R
 
1/26/2020
- Pulled the package that Eva created and developed unit testing for each function
- Created 3 seperate testing files for testing the following
        - Decided to use 3 in order to run tests of similar types seperately, proving that the API works, proving that the data frame initializes properly, and proving that data filtering and sumarizing works properly
    - That the poke_api function can contact the pokeAPI server
    - That the initializeDataFrame function pulls the same information as last time
         - This function is not being tested on the CRAN servers (just locally) as they requested that any test that take longer than a minute not be tested on their servers
    - That the test summary and poke.filter functions work as expected
        - Decided to have this test file pull the data frame data from a .csv file so that this functionality could be tested on CRAN servers
- Added if statements to handle user input errors in the poke.filter function
- Updated the summary and poke.filter functions to take the pokeframe in as an argument
    - Decided that this would be better so that the user can choose when to run the initializeDataFrame function, rather than having it run on import of the package and slowing them down
- Tested the Travis CI (needs to install a bunch of packages to work, having issues with that b/c takes way too long to install)
- Figured out how to determine coverage
- Adjusted package code and testing code in order to get 100% coverage
- Ran coverage report and got 100% coverage
- Wrote the Markdown file instructions

1/27/2020
- Figured out how to check the build of an R package, checked the build, and started learning about Roxygen
 
1/28/2020
- Did research on how to properly implement Roxygen
- Worked on cleaning up the errors that were preventing the build from passing the check (itterating between making changes to roxygen, description, and namespace and checking the files)

1/29/2020
- Worked on trying to get the Travis CI working, got it working for Linux but can't get passed the osx error
- Started investigating CI for Windows, found Appveyor, and asked Eva to initialize the project on Appveyor

1/30/2020
- Sent Dr. Narayan a message on Slack to ask for help with the osx issues
- Worked with Eva to get Appveyor working (she made the .yml file, I figured out the settings on the Appveyor website for it to build correctly) we now have a passing build on Linux and Windows, but we are still having issues with osx
- Worked through the httr best practices link and updated functions to adhear to them
- Re-built after updating for httr best practices and have some issues, worked on cleaning them up and getting a working build for Linux and Windows again
- Created CONTRIBUTING.md file
- Decided to use the MIT license as it allows anyone to use it, and it makes it so that we can't be held liable for any claim, damages, or other liability, and it states that the software is provided as is without warranty
- Created the LICENSE.md file
- Created the CODE_OF_CONDUCT.md file
- Accidentally worked in the master, didn't realize it until I was about to push. I merged unittesting to be a copy of the master, will go back to working in the unittesting branch
- Read through project requirements to develope a work remaining list

2/3/2020
- Checked on Travis CI to see if I could figure out the osx issue and it turned out that the build was now working (no code had been changed from the last time I worked on the Travis CI issues to this point)
- Ran through the project with Eva to ensure we had completed all required items
- Discussed the presentation and how we were going to format it with Eva
