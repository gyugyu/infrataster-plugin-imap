require "infrataster"
require "net/imap"

module Infrataster
  module Contexts
    class ImapMailboxStatusContext < BaseContext
      def response
        options = {
          port: 143,
          auth_type: "LOGIN",
          user: "postmaster@example.com",
          password: "",
          attr: ["MESSAGES", "RECENT"]
        }.merge resource.options
        options.merge! server.options[:imap] if server.options[:imap]

        server.forward_port(options[:port]) do |address, new_port|
          client = Net::IMAP.new(address, port: new_port, ssl: options[:ssl])
          client.authenticate options[:auth_type], options[:user], options[:password]
          client.status resource.mailbox, options[:attr]
        end
      end
    end
  end
end

