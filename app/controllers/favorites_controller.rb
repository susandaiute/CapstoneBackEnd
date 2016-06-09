class FavoritesController < OpenReadController
  before_action :set_favorite

  # GET /favorites
  # GET /favorites.json
  def index
    @favorites = current_user.favorites

    render json: @favorites
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    render json: Favorite.find(params[:id])
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = current_user.favorites.build(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    # @favorite = Favorite.find(params[:id])
    # pollpanda did not have above line  ???
    if @favorite.update(favorite_params)
      head :no_content
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy

    head :no_content
  end

  # private

  def set_favorite
    @favorite = current_user.favorites.find(params[:id])
  end

  def favorite_params
    params.require(:name, :description, :user_id)
  end
end
