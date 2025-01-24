scoreboard objectives add log4mc.main dummy
scoreboard objectives add log4mc.settings dummy
scoreboard objectives add log4mc.enum dummy
scoreboard objectives add log4mc.temp dummy

function log4mc:private/logger_init/load/enum

data merge storage log4mc:main {}
data merge storage log4mc:macro {}
data merge storage log4mc:history {}
data merge storage log4mc:clipboard {root:""}

function log4mc:private/logger_init/load/special_chars