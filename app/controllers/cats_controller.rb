class DogsController < PetsController
    def scope
      Pet.where(species: 'cat')
    end
  end