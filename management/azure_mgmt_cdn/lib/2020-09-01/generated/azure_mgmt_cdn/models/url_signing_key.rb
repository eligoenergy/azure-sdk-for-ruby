# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Url signing key
    #
    class UrlSigningKey

      include MsRestAzure

      # @return [String] Defines the customer defined key Id. This id will
      # exist in the incoming request to indicate the key used to form the
      # hash.
      attr_accessor :key_id

      # @return [KeyVaultSigningKeyParameters] Defines the parameters for using
      # customer key vault for Url Signing Key.
      attr_accessor :key_source_parameters


      #
      # Mapper for UrlSigningKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UrlSigningKey',
          type: {
            name: 'Composite',
            class_name: 'UrlSigningKey',
            model_properties: {
              key_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyId',
                type: {
                  name: 'String'
                }
              },
              key_source_parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keySourceParameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultSigningKeyParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
