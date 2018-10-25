# Q0: Why are these two errors being thrown?
1) The first error is being thrown because when we make changes to the database we must migrate those changes to our directory. 
2) The second error is being thrown because there the Pokemon class has not yet been created. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are appearing through the seeds.rb file. When we run rails db:seed, we automatically generate the Pokemon that are in the seeds file into out database. None of these Pokemon have been connected to a Trainer. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line creates a button that when clicked redirects the method capture in the PokemonController. This method is passed the parameter "id" which contains the value of the pokes that is being captured. 

# Question 3: What would you name your own Pokemon?
Taco

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the path of the trainer with the id passed in as a parameter. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The Pokemon.errors returns a has with all the error message where the key is indicated by :error. flash[:error] then accesses this error message. 

# Give us feedback on the project and decal below!
https://github.com/rahuldesai1/proj1

# Extra credit: Link your Heroku deployed app
