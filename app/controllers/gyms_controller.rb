class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_try_again

    def show
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy
        head :no_content
    end

    private

    def render_try_again(error)
        render json: { error: "not found" }, status: :not_found
    end

end
