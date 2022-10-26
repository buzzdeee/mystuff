# frozen_string_literal: true

require_relative '../networking'

module Facter
  module Resolvers
    module Openbsd
      class Dhcp < Facter::Resolvers::Networking
        init_resolver
        class << self
          def extract_dhcp(interface_name, _raw_data, parsed_interface_data)
            result = Facter::Core::Execution.execute("dhcpleasectl -l #{interface_name}", logger: log)
            return unless result.empty?

            match = result.match(/^#{interface_name} \[Bound\]$/)&.to_s&.strip
            parsed_interface_data[:dhcp] = interface_name unless match.empty?
          end
        end
      end
    end
  end
end
