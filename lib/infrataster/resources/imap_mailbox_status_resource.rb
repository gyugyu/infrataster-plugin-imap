require "infrataster"

module Infrataster
  module Resources
    class ImapMailboxStatusResource < BaseResource
      Error = Class.new StandardError

      attr_reader :mailbox, :options

      def initialize(mailbox, options = {})
        @mailbox = mailbox
        @options = options
      end

      def to_s
        "IMAP mailbox status '#{mailbox}'"
      end
    end
  end
end
