<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" alt="light" srcset="docs/banner_dark.svg" width="400px">
    <img alt="light" src="docs/banner_light.svg" width="400px">
  </picture>
</div>

# What is Log4MC ?
Log4MC is logger for datapacks.  
It is an attempt to match the standard logging APIs of other programming languages.  
It is based on [MulverineX's module](https://github.com/MulverineX/mcfunction-logger), but adds practical features and a simplified syntax.

> [!CAUTION]
> It is not recommended to include Log4MC as a module in your datapack, or to distribute your datapack with Log4MC, as this is not done for a production version, but only when creating your datapack.  
> Furthermore, the end-user should have the choice of using the logger he wants, and if he wants to use one. Indeed, your datapack will still work without Log4MC, even if the logging functions are still present in your code. Calling these functions without any logger responding is EXPECTED behavior.  

## Getting Started

Logging with Log4MC is pretty simple.  
At the start of your tick or load file, call `#tick_logger` or `#load_logger` and specify a namespace.  
You can then use the 6 logging functions, corresponding to the six severity levels : `#trace`, `#debug`, `#info`, `#warn`, `#error`, `#fatal`.  
*The choice of placing these functions under the default namespace is explained [here](Syntax.md).*
```mcfunction
#load.mcfunction
function #load_logger {namespace:"mypack"}

function #trace {m:"this is a trace"}
function #debug {m:"this is a debug"}
function #info {m:"this is an info"}
function #warn {m:"this is a warn"}
function #error {m:"this is an error"}
function #fatal {m:"this is a fatal error"}
```

```mcfunction
#tick.mcfunction
function #tick_logger {namespace:"mypack"}

function #trace {m:"tick"}
```

The logic behind this is that if you register your namespace at the beginning of your tick file or your load file, it's possible to link your logs to your namespace and to the moment of logging.  
In addition, the severity level can be used to filter and display only relevant logs. In the default configuration, the console severity level is `INFO`.  
In this case, with the previous example, the console will display this :  
```
... @@@ [L:279822][mypack/INFO]: this is an info
... @@@ [L:279822][mypack/WARN]: this is a warn
... @@@ [L:279822][mypack/ERROR]: this is an error
... @@@ [L:279822][mypack/FATAL]: this is a fatal error
```
But if the console's severity level was set to `TRACE`, this would be displayed :  
```
... @@@ [L:279822][mypack/TRACE]: this is a trace
... @@@ [L:279822][mypack/DEBUG]: this is a debug
... @@@ [L:279822][mypack/INFO]: this is an info
... @@@ [L:279822][mypack/WARN]: this is a warn
... @@@ [L:279822][mypack/ERROR]: this is an error
... @@@ [L:279822][mypack/FATAL]: this is a fatal error
... @@@ [T:279822][mypack/TRACE]: tick
... @@@ [T:279823][mypack/TRACE]: tick
... @@@ [T:279824][mypack/TRACE]: tick
... @@@ [T:279825][mypack/TRACE]: tick
... ...
```

`@@@` indicates that the message displayed in the console is a message from a datapack.  

The first block corresponds to the moment :  
 - The first letter `L` or `T` indicates whether the message was sent at load or at tick  
 - The number that follows is the gametime (in tick)  

The second block corresponds to the source of the message :  
 - `mypack` is the namespace of the datapack that produced the log  
 - `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `FATAL` is the severity  

You can change the console's severity level as follows : 
```
scoreboard players operation console_level log4mc.main = #off log4mc.enum
scoreboard players operation console_level log4mc.main = #trace log4mc.enum
...
scoreboard players operation console_level log4mc.main = #fatal log4mc.enum
scoreboard players operation console_level log4mc.main = #all log4mc.enum
```
## Features

 - Severity logging
 - Logs formatting
 - Logs dumping