Rails.application.routes.draw do
  # Api definition
    namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' } do
      scope module: :v1, constraints: ApiConstraints.new(version:1, default: true) do
      # We are going to list our resources here
      end
    end
  end

#  we have three types of headers are request headers, response headers and entity headers
# http request headers
# user-agent : type of browser
#accept : defines content type means text/html, application/json
#authorization: authorization cred of the host
#content-type : application/json