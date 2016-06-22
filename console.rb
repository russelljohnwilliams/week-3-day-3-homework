require_relative('./models/petshop')
require_relative('./models/pet')
require_relative('./db/sql_runner')

require('pry-byebug')


runner = SqlRunner.new( {dbname:'petshop', host:'localhost'})


petshop1 = Petshop.new( {'name' => 'Fantastic Pet Emporium - Edinburgh'}, runner )
petshop2 = Petshop.new( {'name' => 'Fantastic Pet Emporium - Newcastle'}, runner )
petshop3 = Petshop.new( {'name' => 'Fantastic Pet Emporium - New York'}, runner )

petshop1.save()
petshop2.save()
petshop3.save()

pet1 = Pet.new( {'name' => 'Algernon', 'type' => 'mouse', 'petshop_id' => 1 }, runner )
pet2 = Pet.new( {'name' => 'Balthazar', 'type' => 'Monkey', 'petshop_id' => 1 }, runner )

pet3 = Pet.new( {'name' => 'Jennifer', 'type' => 'Sloth', 'petshop_id' => 2 }, runner )
pet4 = Pet.new( {'name' => 'Steven Morrissey', 'type' => 'Porcupine', 'petshop_id' => 2 }, runner )

pet5 = Pet.new( {'name' => 'Jimmy', 'type' => 'Shrew', 'petshop_id' => 3 }, runner )
pet6 = Pet.new( {'name' => 'Franklyn', 'type' => 'Peregrine Falcon', 'petshop_id' => 3 }, runner )

petshop1.list_pets_from_a_petshop(2)

pet1.save()
pet2.save()
pet3.save()
pet4.save()
pet5.save()
pet6.save()

petshop1  .edit_petshop('Petland - Edinburgh', 'Fantastic Pet Emporium - Edinburgh')


# binding.pry
# nil