require "infrataster"
require "net/imap"

module Infrataster
  module Contexts
    class ImapAuthenticationContext < BaseContext
      def result
        options = {port: 143, auth_type: "LOGIN"}.merge resource.options
        options.merge! server.options[:imap] if server.options[:imap]

        server.forward_port(options[:port]) do |address, new_port|
          client = Net::IMAP.new(address, port: new_port, ssl: options[:ssl])
          client.authenticate options[:auth_type], resource.user, resource.password
        end
      end
    end
  end
end

