require_relative './gateway'

module Argonaut

  class Cli
    attr_reader :gateway

    def initialize(gateway:)
      @gateway = gateway
    end

    def teams
      raw_data = @gateway.fetch(path: 'teams')
      raw_data['data']
    end

    def reservations(team_id)
      @gateway.fetch(path: "reservations/#{team_id}")
    end

    def reserve(team_id, app_name, environment_name)
      @gateway.post(path: "data")
    end
  end
end
