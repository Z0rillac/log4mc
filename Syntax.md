# Attempting to create a common logging syntax
Logging can often become critical in certain applications. From investigations to bug fixes, logging is sometimes the only proof of what happened.  
Logging can also become critical when there's a lot of it. In some cases, it becomes an important subject of study, as a solution must be found to store large quantities of data quickly and compactly.  
Finally, logging is sometimes critical because the way it is implemented may not please everyone.  

Minecraft datapack syntax and execution flow are very particular. Although complicated and sometimes rigid, commands can take many forms to do the same thing.
Minecraft datapacks all run in the same environment, and if they log, they do so in the same place.  
Minecraft developers seem to be giving more and more freedom and simplicity to datapack development. We don't have a /log yet, but even if it does, the following question still arises :  
**How can we offer everyone the ability to manage their logs as they wish ?**  

We need to propose a common syntax that meets several criteria: 
 1. Simplicity and speed of writing and reading
 2. Simplicity of implementation and interchangeability
 3. Ability to be identified by other applications

## 1. Simplicity and speed of writing and reading
Logging in code is common and extremely frequent, and it's tiring to have to follow a whole procedure to display a simple piece of data. So it's crucial that logging in minecraft is quick and easy. Here's how to do it:  
 - Using the `function` command is unavoidable, there's no way to shorten it.  
 - We can put functions in the common namespace `minecraft`, which can be omitted from the code.  
 - We can use a macro to define our message, so it's done in one line  
 - We can use a single letter for the macro name, `m` logically identifiable as “message”.  

In this way, we have the following functions :  
```
function trace {m:"<message>"}
function debug {m:"<message>"}
function info {m:"<message>"}
function warn {m:"<message>"}
function error {m:"<message>"}
function fatal {m:"<message>"}
```

It's a fortunate coincidence that no superfluous words other than `function` are needed to execute the functions, and the delimiters are still simple, making them particularly easy to read.

## 2. Simplicity of implementation and interchangeability
Logging has to be efficient and useful in terms of information, yet simple to implement and interchangeable, because everyone wants to be able to implement their own logger, or use their own logger for different datapacks from other authors.  
Using a function tag in the default namespace rather than a function makes sense for the following reasons:  
 - In terms of implementation simplicity, it's easier to develop your logger under a private namespace and associate its functions with the common syntaxes defined in a function tag in the default namespace.  
 - In terms of interchangeability, it's easier to override a function tag than a function if necessary, because there's a feature for it.  
 - In the case where a user doesn't want a logger, a function tag that doesn't link to any function is still valid, and even if that tag doesn't exist, calling a non-existent function tag or function in mcfunction isn't a **syntax error**.  
 - Using a function tag rather than a function costs nothing more than adding a `#`.  

In this way, we have the following functions :  
```
function #trace {m:"<message>"}
function #debug {m:"<message>"}
function #info {m:"<message>"}
function #warn {m:"<message>"}
function #error {m:"<message>"}
function #fatal {m:"<message>"}
```

Current functions don't allow you to initialize your logger, but we need to be able to initialize our logger.  
For this purpose, the choice of a function to be called in the user's initialization function file and a function to be called in the user's tick function file seems more appropriate than having to add them to the `#load` and `#tick` function tags, for the following reasons:  
 - Calling an external module initialization function at the beginning of the load and tick files lets us know that it's active on our project, and that we can use it.  
 - Although the load and tick functions can be called several times by server reload or by server tick because they are not in a tag function, it's still possible to distinguish whether the logger has already been loaded or updated on a tick.
 - Placing the load and tick functions before our code allows us to define parameters specific to tick and namespace. These parameters can then have an influence only on our code and not on that of others.
 - An obvious feature of such an approach is the ability to specify the namespace that will be used to call logging functions, so that you can differentiate between datapacks in the logs without having to specify the source each time.
 - Another feature enabled by this approach is the identification of the tick and call time of a logging function.

In this way, we have the following new functions :  
```
function #load_logger {namespace:"<namespace>"}
function #tick_logger {namespace:"<namespace>"}
```

## 3. Ability to be identified by other applications
Some developers may simply need to itenfy in the datapack code or in the console that logging is taking place.  
In the console, using a prefix does the job perfectly. In the code, the syntax is easily identifiable.  
Thanks to the use of common tag functions, when logging functions are called, it's easy to intercept them with a mod or plugin and manage them efficiently in Java, without using a datapack logger.  

## Submit your ideas
Thanks to this common syntax, it will be easier for everyone to manage logs as they wish, while remaining efficient.
But there's no way this can work for everyone if it's just one person thinking about the problem. So I invite you to share your ideas and contribute to the development of this project.