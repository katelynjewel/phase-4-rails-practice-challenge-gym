class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordNotFound, with: :render_invalid
    
private

def render_not_found(error)
    render json: { error: error.message}, status: :not_found
end

def render_invalid(invalid)
    render json: { errors: invalid.error.message}, status: :not_found
end

end
