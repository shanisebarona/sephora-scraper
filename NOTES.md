# Sephora Scraper

- A command line interface for new products added to Sephora's website. 

## Userflow 

1. User types "Show me the beauty!" or "hi" to trigger the app
2. CLI shows a numbered list of all products added to the /new-beauty-products Sephora page. 
3. CLI should prompt user to enter a number to view more details about a product or "exit". 
4. When user enters a number, CLI takes user to product page. 
5. User should be able to enter "exit" to exit out of the app or "list" to view the list again. 
6. When an invalid entry is made CLI should prompt the user to enter a valid entry. "Oops, that was an inccorect selection. Type list or exit."

Bonus: Let user select "random" to receive output of a random beauty product chosen for them


## Freewrite
Each product shoud have:
- a name & brand name
- price 
- URL
- availbility 

## TIL 
- `shift + cmd p` = changing the language of a file. bin file that talks to the CLI isn't a ruby file, but I needed to add ruby syntax. 
- this was set = to spec.executables  #spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
- understanding the folder structure. many ways to go about it. 
- require both watir and webdrivers in irb and `Watir::Browser.new` instantiates a new broswer session. 
- how to update $PATH
- giving bash permission to execute the bin file
- `shift + option + down or up arrow` duplicates the line and puts the dupe either above or below
- `option + cmd + arrow` multiline cursor, edits multiple lines at a time
- always be commiting. push your changes, no matter how small. 

## Challenges
- figuring out how to the heck to put something ON my $PATH
- in avi's video, it let him do GemName::MainFile, but it did't let me do that. instead of `SephoraScraper::Beauty`, I just called `Beauty` and that seem to work fine. update, the namespacing now seems to be working? 