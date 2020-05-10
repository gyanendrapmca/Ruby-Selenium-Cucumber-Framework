require 'logger'

class ReportLog

  @file = File.open("ReportLog.log", File::WRONLY | File::CREAT)

  @@log = Logger.new(@file)
  @@log.level = Logger::DEBUG
  @@log.datetime_format = '%Y-%m-%d %H:%M:%S'

  def self.logInfo(message)
    @@log.info(message)
  end

  def self.logDebug(message)
    @@log.debug(message)
  end

  def self.logError(message)
    @@log.error(message)
  end

  def self.logWarn(message)
    @@log.warn(message)
  end

end