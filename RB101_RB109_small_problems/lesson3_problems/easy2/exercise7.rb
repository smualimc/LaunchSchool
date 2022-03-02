# We could have used either Array#concat or Array#push to add Dino to the family.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.concat(%w(Dino Hoppy))

# or

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.push("Dino").push("Hoppy")
