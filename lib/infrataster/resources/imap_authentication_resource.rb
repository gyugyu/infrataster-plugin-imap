require "infrataster"

module Infrataster
  module Resources
    class ImapAuthenticationResource < BaseResource
      Error = Class.new StandardError

      attr_reader :user, :password, :options

      def initialize(user, password, options = {})
        @user = user
        @password = password
        @options = options
      end

      def to_s
        "IMAP authentication '#{user}'"
      end
    end
  end
end
