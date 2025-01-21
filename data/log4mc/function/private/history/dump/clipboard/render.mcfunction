data modify storage log4mc:macro current set from storage log4mc:clipboard root
$data modify storage log4mc:macro concat set value "[$(gametime)/$(state)][$(namespace)/$(level)]: $(message)"
function log4mc:private/history/dump/clipboard/concat with storage log4mc:macro