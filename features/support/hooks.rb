# frozen_string_literal: true

require 'report_builder'

Before do
  $driver.start_driver
  $driver.manage.timeouts.implicit_wait = 15
end

After do |scenario|
  add_screenshot(scenario)
  $driver.driver_quit
end

def add_screenshot(scenario)
  nome = scenario.name.gsub(/[^A-Za-z0-9]/, ' ').tr(' ', '-').downcase!
  if scenario.failed?
    path = "log/screenshots/#{nome}.png"
    $driver.screenshot(path)
    embed(path, 'image/png', 'falha')
  end
end

at_exit do
  ReportBuilder.input_path = 'log/report.json' # busca arquivo json
  ReportBuilder.report_path = 'log/report' # gera relatório
  ReportBuilder.color = 'green'
  ReportBuilder.configure do |config|
    config.report_types = %i[json html]
    config.report_title = 'Automação App'
    options = {
      additional_info: {
        'Ambiente' => 'Staging / QA',
        # 'Ambiente' => 'Release / Pré-prod',
        'Data/Hora da execução' => DateTime.now.strftime('%d/%m/%Y - %H:%M:%S')
      }
    }
    ReportBuilder.build_report options
  end
end
