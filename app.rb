class Logger

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end
    return @@x
  end

  def self.say_something
    puts "lala"
  end

  def log_something wat
    @f.puts wat
  end
end

Logger.say_something
Logger.instance.log_something 'wablala'
Logger.instance.log_something 'wablala2'

logger = Logger.new
logger.log_something 'boom'
