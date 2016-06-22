require_relative('./models/petshop')
require_relative('./models/pet')
require_relative('./db/sql_runner')

require('pry-byebug')


runner = SqlRunner.new( {dbname:'petshop', host:'localhost'})


petshop1 = Petshop.new( {'name' => 'the dainty wee bijou Pet Emporium', 'type' => 'compact'}, runner )
petshop2 = Petshop.new( {'name' => 'great big Pet Emporium', 'type' => 'run of the mill'}, runner )
petshop3 = Petshop.new( {'name' => 'Illegally imported Pet Emporium', 'type' => 'Exotic'}, runner )


petshop1.save()
petshop2.save()
petshop3.save()

pet1 = Pet.new( {'name' => 'Algernon', 'type' => 'mouse', 'petshop_id' => 1 }, runner )
pet2 = Pet.new( {'name' => 'Balthazar', 'type' => 'Shrew', 'petshop_id' => 1 }, runner )

pet3 = Pet.new( {'name' => 'Jennifer', 'type' => 'Sloth', 'petshop_id' => 2 }, runner )
pet4 = Pet.new( {'name' => 'Steven Morrissey', 'type' => 'Porcupine', 'petshop_id' => 2 }, runner )

pet5 = Pet.new( {'name' => 'Jimmy', 'type' => 'Monkey', 'petshop_id' => 3 }, runner )
pet6 = Pet.new( {'name' => 'Franklyn', 'type' => 'Peregrine Falcon', 'petshop_id' => 3 }, runner )



pet1.save()
pet2.save()
pet3.save()
pet4.save()
pet5.save()
pet6.save()

# petshop1.find_petshop_by_id(2)

# petshop1.list_all_petshops

# petshop1.list_pets_from_a_petshop(2)

# petshop1.delete_petshop(2)

# petshop1.edit_petshop('name', 'pet-o-rama', 3)




binding.pry
nil