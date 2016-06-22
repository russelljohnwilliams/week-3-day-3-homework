class Petshop

attr_reader(:name, :id)

  def initialize( options, runner )
    @id = options['id'].to_i
    @name = options['name']
    @type = options['type']
    @runner = runner
  end

  def save()
    sql = "INSERT INTO petshops (name) VALUES ('#{@name}') RETURNING *"
    petshop_data = @runner.run(sql)
    @id = petshop_data.first['id'].to_i
  end

  def list_pets_from_a_petshop(id)
    sql = "SELECT name FROM pets WHERE petshop_id = '#{id}';"
    pets = @runner.run(sql)
    all_the_pets = pets.map { |pet| pet['name'] }
    print all_the_pets   
  end

  def find_petshop_by_id(id)
    sql = "SELECT name FROM petshops WHERE id = '#{id}';"
    petshop = @runner.run(sql)
    find_petshop = petshop.map { |shop| shop["name"] }
    print find_petshop
  end

  def edit_petshop(attribute, new_input, id)
    sql = "UPDATE petshops SET #{attribute} = '#{new_input}' WHERE id = '#{@id}';"
    @runner.run( sql )
  end

  def delete_petshop(id)
    sql = "DELETE FROM petshops WHERE id = '#{@id}';"
    @runner.run( sql )
  end

  def list_all_petshops()
    sql = 'SELECT * FROM petshops'
    all_shops = @runner.run( sql )
    list_of_shops = all_shops.map { |shop| shop['name'] }
    print list_of_shops
  end



end