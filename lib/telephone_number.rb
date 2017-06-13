require 'telephone_number/version'
require 'utilities/hash'
require 'forwardable'

module TelephoneNumber
  autoload :DataImporter, 'telephone_number/data_importer'
  autoload :TestDataGenerator, 'telephone_number/test_data_generator'
  autoload :Parser, 'telephone_number/parser'
  autoload :Number, 'telephone_number/number'
  autoload :Formatter, 'telephone_number/formatter'
  autoload :PhoneData, 'telephone_number/phone_data'
  autoload :ClassMethods, 'telephone_number/class_methods'

  extend ClassMethods

  # allows users to override the default data
  @override_file = nil

  # allows users to provide a default format pattern
  @default_format_pattern = nil

  # allows users to provide a default format string
  @default_format_string = nil

  def self.override_file=(file_name)
    @override_file = file_name
  end

  def self.override_file
    @override_file
  end

  def self.default_format_string=(format_string)
    @default_format_string = format_string
  end

  def self.default_format_string
    @default_format_string
  end

  def self.default_format_pattern=(format_string)
    @default_format_pattern = Regexp.new(format_string)
  end

  def self.default_format_pattern
    @default_format_pattern
  end
end
