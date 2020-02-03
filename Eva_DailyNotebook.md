
### Notebook
###### Eva Nguyen

Thursday, 1/16/20
* Researched different APIs with Connor and decided Pokemon would be a fun API to explore. Also, the API has many API wrappers across different platforms, but not in R!
* Submitted our group API topic as a new discussion on Canvas
* Made GitHub repository and invited Connor to collaborate

Friday, 1/24/20
* Added top 5 moves data to Connor’s R script. Many Pokemon have more than 5 moves, but we thought it would be more digestible as a data frame with only the top 5 moves as a list per Pokemon
* Researched how to make an R package, tested it on a simple function
* Created poke.filter function for our R package to filter the data frame based on Pokemon names. It was easier to make the filter as a function that took a list of strings or only a single string as the input
* Created bar charts for our summary function outputs. The built-in bar plot function was the most straightforward instead of loading another library
* Formatted bar charts with relevant labels and Pokemon theme colors

Saturday, 1/25/20
* Created package with our R script and uploaded it to Git repository. It seemed like the easiest and fastest way to publish a package was with Github where users can use the developer library to install our package. The other method was to publish it to cran, but it required additional documentation and explanation
* Updated relevant notation in the R script for developers and ‘Description’ file for dependencies

Sunday, 1/26/20
* Enabled Travis for git repository so Connor can initiate test with a .yml file

Monday, 1/27/20
* Researched vignette documentation on how to get started and reviewed example vignettes by using the browseVignettes() command in R Studio

Tuesday, 1/28/20
* Started creating vignette documentation by including information on how to download our package from GitHub and install it in R Studio
* Vignette also included the purpose of our API, a link to pokeAPI documentation, and how to initialize our data frame

Thursday, 1/30/20
* Enabled AppVeyor testing for Windows
* Created .yml file and spent a long time researching how to fix test failed message on AppVeyor. It kept showing the error message that the Visual Studio project switch build is missing so I included a 'build: off' statement in the .yml file. Connor updated one of the settings on AppVeyor to build as a script which helped with fixing the issue


Friday, 1/31/20
* Connor and I realized we both started on the documentation separately. He made his edits on the README.md file and I made mine on a .rmd file. I had to research what was the difference between a README.md file and a Vignette for R packages. I found online that both files can essentially have the same information, but README.md is more front facing for GitHub and Vignette can included more details and code about the package
* I consolidated Connor's README.md edits with my own edits and worked on formatting for both documents. Both README.md and Vignette have the same information, but Vignette has additional information about the API call methodology. The reason is we wanted to provide users with more details about 'what is going on under the hood' since the package only returns a data frame
* Added both Travis BI and AppVeyor build stamps to README.md file
* Fixed all 'Pokemons' to 'Pokemon' since I realized 'Pokemons' is not a word in our documentations and graphs
