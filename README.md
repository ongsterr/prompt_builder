
## **C-Promptz Terminal Prompt Builder v0.1.0**
---------------------------------------------------------------------------------------
### **TL; DR**
### C-Promptz is a simple step by step custom terminal prompt builder designed for beginners to have a small creative terminal win and sparker curiosity of what else is possible. 

### It can take your boring standard prompt to something that is of both your own flavour as well as more functional depending on what you're working on.

```bash
For Example.

Change:   Andrews-MacBook-Air andrewwhalley  ~/apps/ruby/terminal_app 

To:       $andrewwhalley 🙈  $terminal_app ~

```

### **The Idea**

---------------------------------------------------------------------------------------
* The terminal prompt builder was built with programming beginners in mind
* The first "functionally beautiful" thing a beginner can personalise in the terminal
* The app was built to accomplish **3 goals**:
    * Build functional and beautiful prompts for the terminal
    * Incite the curiosity of beginners to question how terminal prompts are built and make even more creative prompts that the app could not do
    * Help beginners understand the functional side and creative side of "creating"

### **Design Philosophy**
---------------------------------------------------------------------------------------
* **Priority #1**: Functionality
    * The app was designed to help users build functional and beautiful terminal prompts

* **Priority #2**: User Experience
    * The app was designed to be as efficient as possible by using the least steps to achieve the final objective
    * The app was designed to have a simple interphase and is dummy-proof
    * The app was also built to add a little fun while accomplishing an objective goal

### **Setup**
-------------
 1. Open terminal or shell
 2. CD to app directory
 3. Type into terminal   
```
>> bundle install
```
 4. Run main.rb file 
```
>> ruby main.rb
```
 5. Follow the in built guide to change your prompt  

### **Development Journey**
---------------------------------------------------------------------------------------
* **Planning Phase**
    * Setting the scope of multiple stages of the development:
        1. Developing the minimum viable product
        2. Modifications based on design and marketing considerations
        3. Internal beta testing and debugging
        3. Developing L1 add-on features
        4. Developing L2 add-on features (if time permits)
        5. Finalise development documentations
    * Identify development activities
    * Develop timeline for development activities

* **Development Phase**
    * App development was broken down into 2 parts:
        * App Introduction/Guide
        * App Functionalities
    * App functionalities were built using simple Ruby codes. Most Ruby concepts taught were very useful in coding the functionalities. For example:
        * Arrays to store data
        ```ruby
        basic_element = ["Username", "Hostname", "Shell", "Shell Version", "Path to Current Directory", "Current Directory", "Exit"]
        ```
        * Hashes to store data
        ```ruby
        username = {
            number: 1,
            name: "Username",
            code: '\u ',
            output: "user"
        }
        ```
        * Loops to create process loop
        ```ruby
        until selection_1 == 6 do
        ...
        end
        ```
        * Control flow to create process rules and flow
        ```ruby
        basic_element_2.each do |key|
            if selection_2 == key[:number]
                output.push(key[:output])
                terminal_code.push(key[:code])
            end
        end
        ```
        * Calling useful gems to access existing pre-built features
        ```ruby
        require 'colorize'
        require 'terminal-table'
        ```
        * Executing terminal codes using Ruby
        ```ruby
        `echo 'PS1="#{terminal_code.join}"' >>~/.bash_profile`
        ```
    * The app were internal tested multiple times by running each possible scenarios followed by debugging
    * App interphase design was synchronised to offer a consistent experience across all "pages" 

* **Closing Phase**
    * Finalise product documentations such as the README file and code files
    * Compile all code files into zip and ensure all files are named logically

### **Key Lessons**

* Setting scope of project by stages is very important. By setting scope by stages, you can systematically strive for perfection yet not sacrificing "completing the task"
    > As someone once said, "Completed is better than perfect."
* Simplify problems and create simple solutions
    > As someone once said," Simple is better."
* Teamwork is key - working in a team independently, identifying strengths and weaknesses within the team and amplify strengths
    > In finance, there are times when 1 + 1 > 2. When you find this, invest!

### **What's Next**
---------------------------------------------------------------------------------------
* Additional features for the prompt builder:
    * Functionality to store pre-built app where users can select from without having to build from scratch
    * Machine learning capability where user designed prompts can be stored and added to library for other users to refer to or use
    * Pre-designed prompts ranking by user "download"
