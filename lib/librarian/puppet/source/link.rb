require 'librarian/source/path'
require 'librarian/puppet/source/local'

module Librarian
  module Puppet
    module Source
      class Link < Librarian::Source::Path
        include Local

        private

          def install_perform_step_copy!(found_path, install_path)
            FileUtils.ln_s(found_path, install_path)
          end
      end
    end
  end
end
