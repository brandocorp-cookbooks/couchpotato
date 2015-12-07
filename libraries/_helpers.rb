module Couchpotato
  module Helpers
    module Common
      def couchpotato_user
        node['couchpotato']['user']
      end

      def couchpotato_version
        node['couchpotato']['version']
      end

      def couchpotato_home
        node['couchpotato']['home']
      end

      def couchpotato_repository
        node['couchpotato']['repository']
      end
    end

    module Recipe
      include Couchpotato::Helpers::Common
    end

    module Git
      include Couchpotato::Helpers::Common

      def tagged_revision_for_version
        tagged_versions[couchpotato_version]
      end

      def tagged_versions
        {
          'master' => 'master',
          '3.0.1' => 'e9593f60e5f709a13c2401e0b8d94e1073efb2e2',
          '3.0.0' => 'bc6727c9482cd590fd1a458d6d9665a13e6079ba',
          '2.6.3' => '965b8089f1d8b58f4201618d0dbd15a77900d003',
          '2.6.2' => 'b20a590aabb13c5b983133b9a63e60e6147f5c63',
          '2.6.1' => 'cd55966575dd2aeb2cdb89e795a284a42336ba42',
          '2.6.0' => '86edf5eb04fbcb92cb825cba669a5bfe709d7d44'
        }
      end
    end
  end
end

Chef::Recipe.send(:include, Couchpotato::Helpers::Recipe)
Chef::Resource::Git.send(:include, Couchpotato::Helpers::Git)
