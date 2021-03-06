# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors
# IMPORTANT: For purposes of running locally, change the origin to the local path of the project. For example: http://localhost:8080
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://credit-challenge-6b4d9.web.app'
    resource '*',
             :headers => :any,
             :methods => [:get, :post, :delete, :put, :options]
  end
end
