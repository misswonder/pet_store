class DogsController < PetsController
  def scope
    Pet.where(species: 'dog')
  end
end