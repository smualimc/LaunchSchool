# 8-4-4-4-12

# My solution
def uuid_gen
  source = ('0'..'9').to_a + ('a'..'f').to_a
  uuid = "#{source.sample}#{source.sample}#{source.sample}#{source.sample}#{source.sample}\
#{source.sample}#{source.sample}#{source.sample}-#{source.sample}#{source.sample}\
#{source.sample}#{source.sample}-#{source.sample}#{source.sample}#{source.sample}\
#{source.sample}-#{source.sample}#{source.sample}#{source.sample}#{source.sample}\
-#{source.sample}#{source.sample}#{source.sample}#{source.sample}#{source.sample}\
#{source.sample}#{source.sample}#{source.sample}#{source.sample}#{source.sample}\
#{source.sample}#{source.sample}"
end

puts uuid_gen

# LS Solution
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end