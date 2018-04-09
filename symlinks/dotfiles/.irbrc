require 'irb/completion'

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File::expand_path("~/.irbhistory")

def irb_quiet
  irb_context.echo = false
end

def irb_loud
  irb_context.echo = true
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
