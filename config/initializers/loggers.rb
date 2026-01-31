logfile = File.open(Rails.root.join("log", "lees.log"), "a") # Open a log file in append mode
logfile.sync = true # Ensure immediate flushing of log messages
LEES_LOG = Logger.new(logfile) # LEES_LOG will be a constant available everywhere
LEES_LOG.level = Rails.development? ? Logger::DEBUG : Logger::WARN
