# frozen_string_literal: true

class BucketlistCountriesController < ProtectedController
  before_action :set_bucketlist_country, only: %i[show update destroy]

  # GET /bucketlist_countries
  def index
    @bucketlist_countries = current_user.bucketlist_countries.all.order(:rank)

    render json: @bucketlist_countries
  end

  # GET /bucketlist_countries/1
  def show
    render json: @bucketlist_country
  end

  # POST /bucketlist_countries
  def create
    @bucketlist_country = current_user.bucketlist_countries.build(bucketlist_country_params)

    if @bucketlist_country.save
      render json: @bucketlist_country, status: :created, location: @bucketlist_country
    else
      render json: @bucketlist_country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bucketlist_countries/1
  def update
    if @bucketlist_country.update(bucketlist_country_params)
      render json: @bucketlist_country
    else
      render json: @bucketlist_country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bucketlist_countries/1
  def destroy
    @bucketlist_country.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bucketlist_country
    @bucketlist_country = current_user.bucketlist_countries.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def bucketlist_country_params
    params.require(:bucketlist_country).permit(:name, :rank)
  end
end
