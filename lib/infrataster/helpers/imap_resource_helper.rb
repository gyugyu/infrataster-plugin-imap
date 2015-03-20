require "rspec"
require "infrataster/resources"

module Infrataster
  module Helpers
    module ResourceHelper
      def imap_authentication(*args)
        Resources::ImapAuthenticationResource.new(*args)
      end

      def imap_mailbox_status(*args)
        Resources::ImapMailboxStatusResource.new(*args)
      end
    end
  end
end
