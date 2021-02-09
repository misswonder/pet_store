class DogsController < PetsController
    def scope
      Pet.where(species: 'bird')
    end
  end