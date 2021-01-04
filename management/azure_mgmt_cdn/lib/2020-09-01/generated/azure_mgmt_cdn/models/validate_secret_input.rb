# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Input of the secret to be validated.
    #
    class ValidateSecretInput

      include MsRestAzure

      # @return [ResourceReference] The secret source.
      attr_accessor :secret_source

      # @return [ValidateSecretType] The secret type. Possible values include:
      # 'UrlSigningKey', 'ManagedCertificate', 'CustomerCertificate'
      attr_accessor :secret_type


      #
      # Mapper for ValidateSecretInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateSecretInput',
          type: {
            name: 'Composite',
            class_name: 'ValidateSecretInput',
            model_properties: {
              secret_source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretSource',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              secret_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
