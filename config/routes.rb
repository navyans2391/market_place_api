Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json }, constraints: {
    subdomain: 'api'} do
      # subdomain means that the resources should under api should include 'api' word in the url otherthan those are not accessible.
      scope module: :v1  constraints: ApiConstraints.new(version: 1, default: true) do 

      end 
  end
end

#  we have three types of headers are request headers, response headers and entity headers
# http request headers
# user-agent : type of browser
#accept : defines content type means text/html, application/json
#authorization: authorization cred of the host
#content-type : application/json