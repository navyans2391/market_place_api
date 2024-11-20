class ApiConstraints
    def initialize(options)
        @version = options[:version]
        @default = options[:default]
    end
    def matches?(req)
        @default || req.headers['Accept'].include?("application/vnd.marketplace.v#{@version}")
    end
end

# rocketpants and versionist  are the gems will handle the version types.
