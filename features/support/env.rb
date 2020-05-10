require 'report_builder'

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'results.json'
    config.report_path = 'TestResults'
    config.report_types = [:retry, :html]
    config.report_title = 'E2E Test Results'
    config.color = 'lime'
    config.additional_info = {browser: 'Chrome', environment: 'Stage 5'}
  end

  ReportBuilder.build_report
end