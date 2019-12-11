# frozen_string_literal: true

class VisitedCountriesController < ProtectedController
  before_action :set_visited_country, only: %i[show update destroy]

  # GET /visited_countries
  def index
    @visited_countries = current_user.visited_countries.all

    render json: @visited_countries
  end

  # GET /visited_countries/1
  def show
    render json: @visited_country
  end

  # POST /visited_countries
  def create
    @visited_country = current_user.visited_countries.new(visited_country_params)

    if @visited_country.save
      render json: @visited_country, status: :created, location: @visited_country
    else
      render json: @visited_country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visited_countries/1
  def update
    if @visited_country.update(visited_country_params)
      render json: @visited_country
    else
      render json: @visited_country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visited_countries/1
  def destroy
    @visited_country.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visited_country
    @visited_country = current_user.visited_countries.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def visited_country_params
    params.require(:visited_country).permit(:country, :year)
  end
end
