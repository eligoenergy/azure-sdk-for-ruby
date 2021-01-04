# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # The JSON object that contains the properties to validate a domain.
    #
    class DomainValidationProperties

      include MsRestAzure

      # @return [String] Challenge used for DNS TXT record or file based
      # validation
      attr_accessor :validation_token

      # @return [String] The date time that the token expires
      attr_accessor :expiration_date


      #
      # Mapper for DomainValidationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainValidationProperties',
          type: {
            name: 'Composite',
            class_name: 'DomainValidationProperties',
            model_properties: {
              validation_token: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationToken',
                type: {
                  name: 'String'
                }
              },
              expiration_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'expirationDate',
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
