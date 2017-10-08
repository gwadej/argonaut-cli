require_relative './gateway'

module Argonaut

  class Cli
    attr_reader :gateway

    def initialize(gateway:)
      @gateway = gateway
    end

    def teams
      @gateway.fetch('teams')
    end

    def reservations(team_id)
      @gateway.fetch("reservations/#{team_id}")
    end

    def reserve(team_id, app_name, environment_name)
      @gateway.post("data")
    end
  end
end
