=begin
YAML:: load file is an alias of unsafe_load_file(filename, **kwargs)
Load the document contained in filename. Returns the yaml contained in filename as a Ruby object, 
or if the file is empty, it returns the specified fallback return value, which defaults to false.

NOTE: This method *should not* be used to parse untrusted documents, 
such as YAML documents that are supplied via user input. Instead, please use the safe_load_file method.
=end

require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.