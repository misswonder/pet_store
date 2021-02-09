class PetsController < ApplicationController
  before_action :set_pet, only: %i[ show edit update destroy ]

  #pet.all.new == pet.new

  def scope
    Pet.all
  end

  # GET /pets or /pets.json
  def index
    @pets = scope
  end

  # GET /pets/1 or /pets/1.json
  def show
    # GET /scope/:id 
    @pet = scope.find(params[:id]) 
    #@pet = scope.find(self.params[:id]) 
    #params[:id] == key: value pair 

  end

  # GET /pets/new
  def new
    @pet = scope.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets or /pets.json
  def create
    @pet = scope.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: "Pet was successfully created." }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1 or /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: "Pet was successfully updated." }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1 or /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: "Pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = scope.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:name, :species, :year_of_birth, :good_with_kids)
    end
end
