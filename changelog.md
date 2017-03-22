#Change Log

Team membership:  Karl (captain), Kevin (mate), Lydia (mate), Ryan (mate)
Team conventions: Allman notation, markdown for changelog  
Changelog format: [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)


## *Version 1.0*

Release Date: Feb 12, 2017

## Updated Components

  - added part model 'Part.php'                                                       		(Ryan)
  - added parts view 'Part.php'                                                       		(Ryan)
  - added single parts page 'single.php'													(Ryan)
  - seeded model with dummy data and functions to get data                            		(Ryan)
  - implemented functions in controller to retrieve data from model and pass to views 		(Ryan)
  - implemented functions in parts controller to open and populate appropriate views  		(Ryan)
  - added wildcard routing for detailed parts page 'single.php'                       		(Ryan)
  - setup views 'parts-page.php' and 'single.php' to display necessary data           		(Ryan)
  - created and updated changelog.md                                                  		(Ryan)

  - added history model 'History.php'                                                 		(Lydia)
  - added history view 'histories-page.php'                                           		(Lydia)
  - modified history controller 'Histories.php'                                       		(Lydia)
  - seeded model with dummy data for history table                                    		(Lydia)
  - setup views to display the table                                                  		(Lydia)
  - changed css for 'histories-page.php'                                              		(Lydia)
  - changed css for 'parts-page.php' and 'single.php'                                 		(Lydia)

  - added assembly model 'Assemble.php'												  		(Karl)
  - added assembly view 'Assembly.php'												  		(Karl)
  - added data to assembly model : partID, img path, and robot type					  		(Karl)
  - added functions in model to return all data from model							  		(Karl)
  - implemented functions in assembly controller to retrieve model data	and pass to view	(Karl)
  - implemented functions in assembly-index view to show parts into a form with checkboxes	(Karl)

  - edited assembly-index view to add submit buttons to form (return it and build it)		(Kevin)
  - changed css for 'assembly-index.php'													(Kevin)					  	
