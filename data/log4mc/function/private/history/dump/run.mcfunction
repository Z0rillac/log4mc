function log4mc:private/history/dump/clipboard/run
data modify storage log4mc:macro clipboard set from storage log4mc:clipboard root
function log4mc:private/history/dump/show with storage log4mc:macro
data modify storage log4mc:clipboard root set value ""
data modify storage log4mc:macro clipboard set value ""

data modify storage log4mc:history root set value []