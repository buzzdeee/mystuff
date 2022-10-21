# frozen_string_literal: true

module Facts
  module Freebsd
    module Memory
      module Swap
        class Used
          FACT_NAME = 'memory.swap.used'

          def call_the_resolver
            fact_value = Facter::Resolvers::Freebsd::SwapMemory.resolve(:used_bytes)
            fact_value = Facter::Util::Facts::UnitConverter.bytes_to_human_readable(fact_value)

            Facter::ResolvedFact.new(FACT_NAME, fact_value)
          end
        end
      end
    end
  end
end
