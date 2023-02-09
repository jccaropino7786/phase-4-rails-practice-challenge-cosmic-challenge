class ScientistsController < ApplicationController
    before_action :find_scientist, only: [:show]

    def index
        scientists = Scientist.all
        render json: scientists, status: :ok
    end

    def show
        render json: @scientist, serializer: ScientistMissionsSerializer, status: :ok
    end

    private

    def find_scientist
        @scientist = Scientist.find(params[:id])
    end

end
