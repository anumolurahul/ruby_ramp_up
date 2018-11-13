# frozen_string_literal: true

require 'fileutils'

def get_stock_files(directory_name)
  return unless Dir.exist?(directory_name)

  Dir.chdir(directory_name)

  file_array = []
  Dir.entries(directory_name).each do |entry|
    filepath, date_suffix = test_file_name(File.realdirpath(entry))
    next unless date_suffix

    file_array.push('file_path' => filepath, 'date_label' => date_suffix)
  end
  file_array
end

def test_file_name(file_name)
  return unless File.file?(file_name) && File.readable?(file_name)

  datematch = File.basename(file_name, '.csv').match(/(\d{8})/)
  file_date = datematch.captures[0]

  [file_name, file_date]
end

def parse_stock_file(file_name); end

files = get_stock_files('/Users/rahulanumolu/ruby_ramp_up/parse_stocks/stocks/')
puts files.inspect
