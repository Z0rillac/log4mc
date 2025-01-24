scoreboard objectives add log4mc.main dummy
scoreboard objectives add log4mc.settings dummy
scoreboard objectives add log4mc.enum dummy
scoreboard objectives add log4mc.temp dummy

function log4mc:private/logger_init/load/enum

data merge storage log4mc:temp {root:{}}
data merge storage log4mc:macro {}
data merge storage log4mc:unicode {root:{}}
data merge storage log4mc:history {}

function log4mc:private/logger_init/load/special_chars