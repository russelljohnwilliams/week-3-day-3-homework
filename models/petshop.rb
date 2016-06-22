class Petshop

attr_reader(:name, :id)

  def initialize( options, runner )
    @id = options['id'].to_i
    @name = options['name']
    @runner = runner
  end

  def save()
    sql = "INSERT INTO petshops (name) VALUES ('#{@name}') RETURNING *"
    petshop_data = @runner.run(sql)
    @id = petshop_data.first['id'].to_i
  end

  def list_pets_from_a_petshop(id)
     sql = "SELECT name FROM pets where petshop_id = '#{id}';"
     pets = @runner.run(sql)
     all_the_pets = pets.map { |pet| pet["name"] }
     print all_the_pets   
  end



  def find_petshop_by_id
    #
  end

  def edit_petshop(new_name, old_name)
    sql = "UPDATE petshops SET #{'name'} = '#{new_name}' WHERE name = '#{old_name}';"
    @runner.run( sql )
  end

  def delete_petshop
    #
  end

  def list_all_petshops
    #
  end



end