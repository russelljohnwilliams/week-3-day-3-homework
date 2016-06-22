class Pet

attr_reader(:name, :type, :id)

  def initialize( options, runner )
    @id = options['id']
    @name = options['name']
    @type = options['type']
    @petshop_id = options['petshop_id']
    @runner = runner
  end

  def save()
    sql = "INSERT INTO pets (name, type, petshop_id) VALUES ('#{@name}', '#{@type}', '#{@petshop_id}');"
    @runner.run(sql)
  end

  def find_pet_by_id
  end

  def edit_a_pet
  end

  def delete_a_pet
  end

  def list_all_pets
  end

end